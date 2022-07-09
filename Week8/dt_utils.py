#!/usr/bin/python

import numpy as np
from sklearn import datasets, tree, metrics, model_selection, ensemble
#from sklearn.externals.six import StringIO
from six import StringIO
import matplotlib.pyplot as plt
import matplotlib.colors as colors
from IPython.display import Image
from mpl_toolkits.mplot3d import Axes3D
#import pydotplus
import itertools
import seaborn as sns

# generate 2D plots showing class distribution on pairs of features
# adapted from http://scikit-learn.org/stable/auto_examples/tree/plot_iris.html#sphx-glr-auto-examples-tree-plot-iris-py)
def featureplot(d_train, t_train, n_classes,
                clf=None,
                d_test=None,
                t_test=None,
                t_names=None,
                c_names=None,
                plt_step = 0.02,
                plt_colors = "rybgcm",
                cnt_colors = ["xkcd:bright red","xkcd:green yellow","xkcd:azure"]
                ):  # limited to 6 colours

    # define contour colours
    my_cmap = colors.LinearSegmentedColormap.from_list("", cnt_colors)

    # get pair list of permutations and get unique set
    n_features = d_train.shape[1]
    x = [sorted(i) for i in itertools.permutations(np.arange(n_features), r=2)]
    x.sort()
    pairs = list(k for k,_ in itertools.groupby(x))

    # check if split sample
    if (d_test is not None):
        splitsample = True
    else:
        splitsample = False

    # set figure size
    plt.figure(figsize=(20, 35))

    # enumerate over combinations
    for pairidx, pair in enumerate(pairs):

        # Derive testing and training samples for pair
        if (splitsample):
            pair_train = d_train[:, pair]
            pair_test = d_test[:, pair]
        else:
            pair_train = d_train[:, pair]
            pair_test = d_train[:, pair]

        # define new plot
        plt.subplot(9, 4, pairidx + 1)
        plt.tight_layout(h_pad=0.5, w_pad=0.5, pad=2.5)
        if (t_names is not None):
            plt.xlabel(t_names[pair[0]])
            plt.ylabel(t_names[pair[1]])

        # extract all values for decision surface
        if (clf is not None):

            fit = clf.fit(pair_train, t_train)

            # define mesh based on chosen data ranges for test sample
            x_min, x_max = pair_test[:, 0].min() - 1, pair_test[:, 0].max() + 1
            y_min, y_max = pair_test[:, 1].min() - 1, pair_test[:, 1].max() + 1

            # define mesh based on chosen data ranges
            xx, yy = np.meshgrid(np.arange(x_min, x_max, plt_step),
                                 np.arange(y_min, y_max, plt_step))

            # predict values in meshgrid
            Z = fit.predict(np.c_[xx.ravel(), yy.ravel()])

            # reshape to meshgrid dimensions
            Z = Z.reshape(xx.shape)

            # plot filled contour of results
            #cs = plt.contourf(xx, yy, Z, cmap=plt.cm.RdYlBu)
            cs = plt.contourf(xx, yy, Z, cmap=my_cmap)

        # Plot the testing points
        for i, color in zip(range(n_classes), plt_colors):

            if (splitsample):
                idx = np.where(t_test == i)
            else:
                idx = np.where(t_train == i)

            if (c_names is not None):
                plt.scatter(pair_test[idx, 0], pair_test[idx, 1], c=color,
                            label=c_names[i], alpha=0.5,
                            #cmap=plt.cm.RdYlBu,
                            edgecolor='black', s=15)
            else:
                plt.scatter(pair_test[idx, 0], pair_test[idx, 1], c=color, alpha=0.5,
                            #cmap=plt.cm.RdYlBu,
                            edgecolor='black', s=15)

    #plt.suptitle("Decision surface of a decision tree using paired features")
    if (t_names is not None):
        plt.legend(loc='lower right', borderpad=0, handletextpad=0)
    plt.axis("tight")

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
            annot=True):

    if normalize:
        d = d.astype('float') / d.sum(axis=1)[:, np.newaxis]

    ax = plt.subplot()

    # define colour map
    my_cmap = sns.light_palette(palette, as_cmap=True)

    # plot heatmap
    sns.heatmap(d, annot=True, ax=ax, cmap=my_cmap)

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

# plot decision tree using sklearn export_graphviz
# See: http://scikit-learn.org/stable/modules/generated/sklearn.tree.export_graphviz.html
# from command line "run dot -Tpng iris.dot -o tree.png"
# Inline logic adapted from https://medium.com/@rnbrown/creating-and-visualizing-decision-trees-with-python-f8e8fa394176
# note: requires pydotplus package
def plotDT(fit, feature_names, target_names, fname=None):

    if (fname is not None):
        tree.export_graphviz(fit, out_file=fname, filled=True, rounded=True,
                             special_characters=True,
                             feature_names=feature_names,
                             class_names=target_names)
        graph = 0

    else:
        dot_data = StringIO()
        tree.export_graphviz(fit, out_file=dot_data, filled=True, rounded=True,
                             special_characters=True,
                             feature_names=feature_names,
                             class_names=target_names)
        graph = pydotplus.graph_from_dot_data(dot_data.getvalue())

    return graph

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
