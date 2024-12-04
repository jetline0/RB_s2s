#
# Scalar replacement transformation
#

import sys
import module.loop.submodule.submodule, transformator
import transformator_arr_overwrite as transformator_ao

#---------------------------------------------------------------------

class ScalarReplace(module.loop.submodule.submodule.SubModule):
    '''The scalar replacement transformation submodule'''
    
    def __init__(self, perf_params = None, transf_args = None, stmt = None):
        'To instantiate a scalar replacement transformation submodule'
        
        module.loop.submodule.submodule.SubModule.__init__(self, perf_params, transf_args, stmt)
        
    #-----------------------------------------------------------------
    
    def readTransfArgs(self, perf_params, transf_args):
        '''Process the given transformation arguments'''

        # all expected argument names
        DTYPE = 'dtype'
        PREFIX = 'prefix'
        OVERWRITE_ARR = 'overwrite_arr'

        # all expected transformation arguments
        dtype = None
        prefix = None
        overwrite_arr = None
        
        # iterate over all transformation arguments
        for aname, rhs, line_no in transf_args:
            # evaluate the RHS expression
            try:
                rhs = eval(rhs, perf_params)
            except Exception, e:
                print 'error:%s: failed to evaluate the argument expression: %s' % (line_no, rhs)
                print ' --> %s: %s' % (e.__class__.__name__, e)
                sys.exit(1)
                
            # data type
            if aname in DTYPE:
                dtype = (rhs, line_no)

            # prefix name for scalars
            elif aname in PREFIX:
                prefix = (rhs, line_no)

            # name of array (enables Theologos Algorithm 1 transform instead of
            # default transform)
            # IGNORES PREFIX NAMING CONVENTIONS
            elif aname in OVERWRITE_ARR:
                overwrite_arr = (rhs, line_no)

            # unknown argument name
            else:
                print 'error:%s: unrecognized transformation argument: "%s"' % (line_no, aname)
                sys.exit(1)

        # check semantics of the transformation arguments
        dtype, prefix, overwrite_arr = self.checkTransfArgs(dtype, prefix, overwrite_arr) 

        # return information about the transformation arguments
        return (dtype, prefix, overwrite_arr)

    #-----------------------------------------------------------------

    def checkTransfArgs(self, dtype, prefix, overwrite_arr):
        '''Check the semantics of the given transformation arguments'''
                
        # evaluate the data type
        if dtype != None:
            rhs, line_no = dtype
            if dtype != None and not isinstance(rhs, str):
                print 'error:%s: data type argument must be a string: %s' % (line_no, rhs)
                sys.exit(1)
            dtype = rhs
        
        # evaluate the prefix name for scalars variables
        if prefix != None:
            rhs, line_no = prefix
            if rhs != None and not isinstance(rhs, str):
                print 'error:%s: the prefix name of scalars must be a string: %s' % (line_no, rhs)
                sys.exit(1)
            prefix = rhs
            
        # evaluate the name of the array that will have 1 register that will be
        # overwritten to each time the array is referenced (regardless of subscript)
        if overwrite_arr != None:
            rhs, line_no = overwrite_arr
            if rhs != None and not isinstance(rhs, str):
                print 'error:%s: the name of the overwritten array must be a string: %s' % (line_no, rhs)
                sys.exit(1)
            if prefix:
                print 'warning: prefix argument to ScalarReplace will be ignored as overwrite_arr argument is passed in'
            overwrite_arr = rhs

        # return information about the transformation arguments
        return (dtype, prefix, overwrite_arr)

    #-----------------------------------------------------------------

    def replaceScalars(self, dtype, prefix, stmt):
        '''To apply scalar replacement transformation'''
        
        # perform the scalar replacement transformation
        t = transformator.Transformator(dtype, prefix, stmt)
        transformed_stmt = t.transform()
        
        # return the transformed statement
        return transformed_stmt
    
    #-----------------------------------------------------------------

    def replaceScalarsOverwrite(self, dtype, overwrite_arr, stmt):
        '''To apply scalar replacement transformation'''
        
        # perform the scalar replacement transformation
        t = transformator_ao.Transformator(dtype, overwrite_arr, stmt)
        transformed_stmt = t.transform()
        
        # return the transformed statement
        return transformed_stmt
    
    #-----------------------------------------------------------------

    def transform(self):
        '''To perform code transformations'''

        # read all transformation arguments
        dtype, prefix, overwrite_arr = self.readTransfArgs(self.perf_params, self.transf_args)

        if overwrite_arr != None:
            transformed_stmt = self.replaceScalarsOverwrite(dtype, overwrite_arr, self.stmt)
        else:
            # perform the bound replacement transformation (Orio)
            transformed_stmt = self.replaceScalars(dtype, prefix, self.stmt)

        # return the transformed statement
        return transformed_stmt



    
