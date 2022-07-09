from Chisq     import *
from numpy import matrix
import scipy.optimize as theMinimiser
from iminuit import Minuit
import math
import matplotlib.pyplot as plt

'''
This code runs both the
    scipy.optimize
and
    iMinuit
minimisers.
    '''
    

#-------------
#Helper function to print Minuit results in some readable way
def showIminuitResult( paramNames, theMinuit ):
    
    #averageList = {}

    fstr = "{0:8.4f}"
    for pn in paramNames :
        val = theMinuit.values[pn]
        err = theMinuit.errors[pn]
        print('\t','{:15s}'.format(pn), ':  \t', fstr.format(val), ' +/- ', fstr.format(err))
        #averageList.update( { pn : [ val, err ] } )
    print('\n')

    return #averageList



#-------------
#Main code

print("\n======================================")
print("Reading in data")
data = np.loadtxt("testData.txt")
print(str(data))

# Create column vectors from the data
xdata = np.matrix(data[:, 0]).T
ydata = np.matrix(data[:, 1]).T
edata = np.matrix(data[:, 2]).T
    
#Create chisq object
theChisq = ChiSq( xdata, ydata, edata, Linear())

print("\n======================================")
print("Minimise the chisq with scipy.optimise")
result = theMinimiser.minimize( theChisq.evaluateForOptimize, [0.0,1.5], method="L-BFGS-B")

print ("\nOptimise results")
print (result)

print("\n\n======================================")
print("Minimise the chisq with minuit")

#Prepare the function needed for Minuit
def evaluateForMinuit( m, c ):
    theChisq.setParameters( [m,c])
    result = theChisq.evaluate()
    return result

#Set up parameter names
paramNames=["m", "c"]

#Set the start values and guess at error. This will be used for initial stepsize.
startvals = { paramNames[0]:0., paramNames[1]:1.}

#Create a minuit minimiser (the meaing of errordef will become clear in later lectures)
theMinuit = Minuit(evaluateForMinuit, **startvals)

#Set the errors on the initial start values
theMinuit.errors=[0.1,0.1]

#Set the increase in chisq for the 1-SD error calculation
theMinuit.errordef=1.0

#Run the minimisation
result = theMinuit.migrad()

#Print result
print ("\nMinuit Results")
showIminuitResult( paramNames, theMinuit )


#An attempt at a lot fo the results.
#This may not work due to verison updates
'''
xo = data[:,0]
yo = data[:,1]
dyo = data[:,2]
model = Linear()
model.setParameters(theMinuit.values)
theory = model.eval(xo)

plt.errorbar(xo, yo, yerr = dyo, fmt = 'o')
plt.plot(xo, theory)
plt.show()
'''


