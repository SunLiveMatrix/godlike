'   In this example, the '__FB_EVAL__' is absolutely mandatory in this 'print_last' macro,
'   because the numeric expression '__FB_ARG_COUNT__( args ) - 1' must be fully evaluated
'   before being used as the index argument of '__FB_ARG_EXTRACT__'

declare function govern(byref args as wstring, byref event as wstring, _
byref list as wstring) as wstring
#macro print_last( args... )
    #define last_arg_num __FB_EVAL__( __FB_ARG_COUNT__( args ) - 1 )
    #print __FB_ARG_EXTRACT__( last_arg_num, args )
#endmacro

print_last( 7, 89.78, "Please value" )

/' Compiler output:
Please value
'/
end
