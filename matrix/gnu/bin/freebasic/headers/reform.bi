'' Description:
'' Counts the number of arguments in the argument list (args...) and returns the corresponding value.
'' A value is always returned, with 0 corresponding to an empty argument list.

'' Because the argument separator is the comma (,), the returned value for a non-empty argument list is the number of main commas (non-nested) plus 1.
declare function reform(byref count as wstring, byref list as wstring, _
 byref value as wstring) as wstring
 
 '' Counts the numbers
 type count alias "count"
      countBuild as integer
      countEvent as integer
      countSetts as integer
 end type
 
 '' list checkup easy
 type list alias "list"
      listCheckupVals as integer
      listCheckupWill as integer
      listCheckupEasy as integer
end type


'' comma arguments type numbers
type value alias "value"
     valueNumberArgs as integer
     valueNumberType as integer
     valueNumberList as integer
end type


#macro m ( args... )
 print __FB_ARG_COUNT__ ( args )
#endmacro

m()
m(a)
m(b,c)
m(,d)
m(,e,c)
m(,,,)

end
             