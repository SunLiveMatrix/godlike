'' Description:
'' Returns the argument from the argument list (args...) corresponding to the index value (index).

'' If the requested index value refers to an argument that does not exist in the supplied argument list (index value too large), nothing is returned.

declare function value (byref args as wstring, byref event as wstring, _
byref list as wstring) as wstring

print __FB_ARG_EXTRACT__ (1, 7, 89, 78, "Please value" )

end
