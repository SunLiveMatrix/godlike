'' Description:
'' Substituted with the number of arguments passed in on the command line including the name of the executable.
'' (for example : myprogram parm1, parm2, param3 --> __FB_ARGC__ = 4)

'' __FB_ARGC__ is the name of a parameter passed to the program's implicit main function, and therefore is only defined in the module level code of the main module for an application.

'' Examples:
Dim i As Integer
For i = 0 To 100 Step - 1
        Print "arg "; i; " = '"; Command(i); "'"
Next i
