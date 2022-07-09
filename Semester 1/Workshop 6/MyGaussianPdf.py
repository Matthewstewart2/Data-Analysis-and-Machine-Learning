import numpy as np
import math

class MyGaussianPdf:


    #............................
    #Constructors
    def __init__(self, mean, width):
        self.mean = float(mean)   #number of rows
        self.width = float(width)   #number of columns
 
 
    #............................
    #Method to return value of Gaussian at point x
    def evaluate(self, x):
        val = math.exp( -(x-self.mean)**2 / (2.0 * self.width**2 ))
        norm = self.width * math.sqrt( 2. * math.pi )
        return val/norm


    #............................
    #Method to return maximum value of Gaussian (at x =  mean)
    def max(self ):
        return self.evaluate(self.mean)
    
    
    #............................
    #Method to return a random number with a Gaussian distribution in +- 3 sigma
    def __next__( self ):
        
        test1 = 0.
        test2 = 0.
        test3 = 1.
        while ( test3 > test2 ):
            test1 = (np.random.uniform() -0.5) * 2.0
            test1 = test1 * self.width * 3.0 + self.mean
            test2 = self.evaluate( test1)
            test3 = np.random.uniform() * self.max()
        
        return test1
    
    
    #............................
    #Method to do numerical integration
    #This is written in a very simplistic way.
    

    def integralNumericBox( self, ilo, ihi ):

        npoints = 10000000
        ninside = 0
        lo = float(ilo)
        hi = float(ihi)

        for i in range(npoints):
            x = lo + np.random.uniform()*(hi-lo)
            y = np.random.uniform()*self.max()
            if( y < self.evaluate(x)): ninside = ninside+1

        Atot = (hi-lo)*self.max()
        eff = float(ninside)/float(npoints)
        
        #Area
        Area = Atot * eff
        #Binomial error
        Error = Atot*math.sqrt(eff*(1-eff)/npoints)

        return Area, Error
            
    #............................
    #Method to do numerical integration
    #This is written in a very simplistic way.
            
            
    def integralNumericAvg( self, ilo, ihi ):
        
        npoints = 10000000
        ninside = 0
        lo = float(ilo)
        hi = float(ihi)
        sum = 0.
        
        for i in range(npoints):
            x = lo + np.random.uniform()*(hi-lo)
            sum+= self.evaluate(x)
        
        Area = (hi-lo)*sum/npoints
        Error = Area * math.sqrt(npoints)/npoints
        
        return Area, Error
    
    #............................
    #Method to do numerical integration
    #This is written using numpy arrays and numpy array functions
    #The operations are done in parallel on the whole array (vectorised)
    def integralNumericFaster( self, ilo, ihi ):
        
        npoints = 10000000
        lo = float(ilo)
        hi = float(ihi)

        # evaluate the argument to the exponential in the function (see the above method evaluate())
        # -> val = math.exp( -(x-self.mean)**2 / (2.0 / self.width**2 )
        # the numpy math methods are really fast when used on arrays.  It's important
        # NOTE: if you are working on a *scalar*, the standard math library is faster.
        xlist = np.square((np.random.uniform(lo,hi, npoints)-self.mean))/(2.0*self.width**2)
        # now exponentiate all of the x entries
        yeval = np.exp(-xlist)
        yeval = yeval/(self.width * math.sqrt( 2. * math.pi ))
        ylist = np.random.uniform(0., self.max(), npoints)
        comp = np.less( ylist, yeval )
        ninside = np.sum(comp)

        Atot = (hi-lo)*self.max()
        eff = float(ninside)/float(npoints)
        
        #Area
        Area = Atot * eff
        #Binomial error
        Error = Atot*math.sqrt(eff*(1-eff)/npoints)
        
        return Area, Error



    #............................
    #Method to do analytic integration
    # This is lazt version wiuch assumed limits are very large
    # So lo and hi are ignored

    def integralAnalytic( self, lo, hi ):
        integral  = 1.
        #integral = self.width*math.sqrt(2.0*math.pi )
        return integral


