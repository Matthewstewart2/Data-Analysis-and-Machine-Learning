#!/usr/bin/python

import numpy as np
from sklearn import datasets, model_selection, metrics, neural_network
from sklearn.model_selection import learning_curve
import matplotlib.pyplot as plt
import seaborn as sns
import itertools

# from scikit-learn
def plot_learning_curve(estimator, title, X, y, ylim=None, cv=None, n_jobs=1,
                        train_sizes=np.linspace(.1, 1.0, 5)):
    """ Generate a simple plot of the test and traning learning curve.
    
    Parameters
    ----------
    estimator : object type that implements the "fit" and "predict" methods
    An object of that type which is cloned for each validation.
    
    title : string
    Title for the chart.
    
    X : array-like, shape (n_samples, n_features)
    Training vector, where n_samples is the number of samples and
    n_features is the number of features.
    
    y : array-like, shape (n_samples) or (n_samples, n_features), optional
    Target relative to X for classification or regression;
    None for unsupervised learning.
    
    ylim : tuple, shape (ymin, ymax), optional
    Defines minimum and maximum yvalues plotted.
    
    cv : integer, cross-validation generator, optional
    If an integer is passed, it is the number of folds (defaults to 3).
    Specific cross-validation objects can be passed, see
    sklearn.cross_validation module for the list of possible objects
    
    n_jobs : integer, optional
    Number of jobs to run in parallel (default 1).
    """
    
    plt.figure()
    plt.title(title)
    if ylim is not None:
        plt.ylim(*ylim)
    plt.xlabel("Training examples")
    plt.ylabel("Score")
    train_sizes, train_scores, test_scores = learning_curve( estimator, X, y, cv=cv, n_jobs=n_jobs, train_sizes=train_sizes)
    train_scores_mean = np.mean(train_scores, axis=1)
    train_scores_std = np.std(train_scores, axis=1)
    test_scores_mean = np.mean(test_scores, axis=1)
    test_scores_std = np.std(test_scores, axis=1)
    plt.grid()
    plt.fill_between(train_sizes, train_scores_mean - train_scores_std, train_scores_mean + train_scores_std, alpha=0.1, color="r")
    plt.fill_between(train_sizes, test_scores_mean - test_scores_std, test_scores_mean + test_scores_std, alpha=0.1, color="g")
    plt.plot(train_sizes, train_scores_mean, 'o-', color="r", label="Training score")
    plt.plot(train_sizes, test_scores_mean, 'o-', color="g", label="Cross-validation score")
    plt.legend(loc="best")
    return plt


# plot loss curve over iterations
# based on http://scikit-learn.org/stable/auto_examples/neural_networks/plot_mlp_training_curves.html#sphx-glr-auto-examples-neural-networks-plot-mlp-training-curves-py
def lossplot(loss, scale='linear'):

    plt.figure(figsize=(10.0, 5.0))

    if (scale == 'log'):
        plt.yscale('log')
    else:
        plt.yscale('linear')

    plt.plot(loss)
    plt.title('Value of loss function across training epochs')
    plt.xlabel('Epochs')
    plt.ylabel('Loss Value')
    plt.grid()

    return

def accplot(acc, scale='linear'):
    
    plt.figure(figsize=(10.0, 5.0))
    
    if (scale == 'log'):
        plt.yscale('log')
    else:
        plt.yscale('linear')
    
    plt.plot(acc)
    plt.title('Value of accuracy function across training epochs')
    plt.xlabel('Epochs')
    plt.ylabel('Accuracy')
    plt.grid()

    return

# Note - expect convergence warning at small training sizes
def compare_traintest(data, target, params, split=0, scale='linear'):

    # define 0.01 - 0.1, 0.1 - 0.9, 0.91 - 0.99 sample if split array not defined
    if (split == 0):
        split = np.concatenate((np.linspace(0.01,0.09,9), np.linspace(0.1,0.9,9), np.linspace(0.91,0.99,9)), axis=None)

    print("NN parameters")
    print(params)

    print("Split sample:")
    print(split)

    train_scores = []
    test_scores = []

    for s in split:

        print("Running with test size of: %0.2f" % s)

        # get train/test for this split
        d = model_selection.train_test_split(data, target,
                                             test_size=s, random_state=0)

        # define classifer
        if params is not None:
            clf = neural_network.MLPClassifier(**params)
        else:
            clf = neural_network.MLPClassifier()

        # run classifer
        e, p = runML(clf, d)

        # get training and test scores for fit and prediction
        train_scores.append(clf.score(d[0], d[2]))
        test_scores.append(clf.score(d[1], d[3]))

    # plot results
    plt.figure(figsize=(15.0, 5.0))
    if (scale == 'log'):
        plt.yscale('log')
    else:
        plt.yscale('linear')
    plt.plot(split, train_scores, label='Training accuracy', marker='o')
    plt.plot(split, test_scores, label='Testing accuracy', marker='o')
    plt.title('Training and Testing Accuracy')
    plt.xlabel('Test sample proportion')
    plt.ylabel('Accuracy')
    plt.xticks(np.arange(0, 1.0, 0.1))
    plt.yticks(np.arange(0, 1.1, 0.1))
    plt.xlim([min(split),max(split)])
    plt.ylim([0,1.01])
    plt.grid()
    plt.legend()

    return

# pretty print confusion matrix
# orginial: http://scikit-learn.org/stable/auto_examples/model_selection/plot_confusion_matrix.html#sphx-glr-auto-examples-model-selection-plot-confusion-matrix-py
def plot_cm(cm, classes, normalize=False, title='Confusion matrix', cmap=plt.cm.Blues):

    if normalize:
        cm = cm.astype('float') / cm.sum(axis=1)[:, np.newaxis]

    plt.imshow(cm, interpolation='nearest', cmap=cmap)
    plt.title(title)
    plt.colorbar()
    tick_marks = np.arange(len(classes))
    plt.xticks(tick_marks, classes, rotation=45)
    plt.yticks(tick_marks, classes)

    fmt = '.2f' if normalize else 'd'
    thresh = cm.max() / 2.
    for i, j in itertools.product(range(cm.shape[0]), range(cm.shape[1])):
        plt.text(j, i, format(cm[i, j], fmt),
                 horizontalalignment="center",
                 color="white" if cm[i, j] > thresh else "black")

    plt.ylabel('True label')
    plt.xlabel('Predicted label')
    plt.tight_layout()

    return

# heat map for confusion matrices and parameter scans
# adapted from https://stackoverflow.com/questions/19233771/sklearn-plot-confusion-matrix-with-labels
def heatmap(d, labels=None, classes=None, title=None,
            palette="Green",
            normalize=False,
            annot=True,
            size=None):

    if normalize:
        d = d.astype('float') / d.sum(axis=1)[:, np.newaxis]

    # figure size
    if (size == 'large'):
        plt.figure(figsize=(20.0, 10.0))

    # round down numbers
    d = np.around(d, decimals=2)

    ax = plt.subplot()

    # define colour map
    my_cmap = sns.light_palette(palette, as_cmap=True)

    # plot heatmap
    sns.heatmap(d, annot=True, ax=ax, cmap=my_cmap, fmt='g')

    # labels, title and ticks
    if (labels is not None):
        ax.set_xlabel(labels[0])
        ax.set_ylabel(labels[1])
    if (title is not None):
        ax.set_title('Confusion Matrix')
    if (classes is not None):
        ax.xaxis.set_ticklabels(classes[0])
        ax.yaxis.set_ticklabels(classes[1])

    return

# Rerun fit and prediction steps for later examples
def runML(clf, d):

    # get training and test data and targets
    train_data, test_data, train_target, test_target = d

    # fit classifier with data
    fit = clf.fit(train_data, train_target)

    # define expected and predicted
    expected = test_target
    predicted = clf.predict(test_data)

    # return results
    return [expected, predicted]
