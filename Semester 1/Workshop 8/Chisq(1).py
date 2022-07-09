import numpy as np

#.....................................................................
#Class to evaluate y = mx + c for a given set of m and c
class Linear:

    # Trivial constructor
    def __init__(self):
        self.m = 0.
        self.c = 1.

    # This method sets the m and c parameters
    def setParameters(self, params):
        
        if (len(params) != 2):
            print("Invalid parameer list -  it must be od dimension 2" )
        else:
            self.m = float(params[0])
            self.c = float(params[1])

    # This is evaluate for a single x data point, or a list of x data points
    def eval(self, xlist):
        result = self.m*xlist+self.c
        return result




#......................................................................
#Class to provide a method to calculate chisq
class ChiSq:

    # This is the constructor which stores the constant column matrices (data x, y and error) and
    # creates the inverse error matrix. All of these never change.
    # It also stores the theoretical function.
    def __init__(self, xin, yin, ein, function ):
        self.xdata  = xin
        self.ydata  = yin
        self.edata  = ein
        self.function = function

        # Do some checks
        if(xin.shape == yin.shape == ein.shape and xin.shape[1] == 1):

            # Create the inverse error matrix
            # This is the naive way to do it
            zeros = np.zeros( (len(self.edata), len(self.edata)) )
            self.cov = np.matrix( zeros )
            for i in range(len(self.edata)):
                self.cov[i,i] = self.edata[i]**2

            self.Icov   = self.cov.I
  
        else:
            print("input at instantiation x-y-e dimension error")


    # To pass in a new set of parameters
    def setParameters(self, params):
        self.function.setParameters(params)


    # Evaluate the chisq                                                                                                                                                      
    def evaluate(self):
        # Create a vector of theoretical points                                                                            
        yth = self.function.eval(self.xdata)
        # Take the difference
        diff = self.ydata - yth
        # Finally form the chisq                                                                                           
        result  = diff.T * self.Icov * diff
        
        return result[0,0]


    # Evaluate the chisq - interface for scipy optimize
    def evaluateForOptimize(self, params):
        self.function.setParameters(params)
        return self.evaluate()



