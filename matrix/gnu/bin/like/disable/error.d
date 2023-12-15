module error;

/**

Object Model

An object is created in the following circumstances:

    a definition
    a NewExpression
    a temporary is created
    changing which field of a union is active

An object spans a sequence of memory locations which may or may not be contiguous. Its lifetime encompasses construction, destruction, and the period in between. Each object has a type which is determined either statically or by runtime type information. The object's memory locations may include any combination of thread-local, immutable, or shared.

Objects can be composed into a composed object. Objects that make up a composed object are subobjects. An object that is not the subobject of another object is a complete object. The lifetime of a subobject is always within the lifetime of the complete object to which it belongs.

An object's address is the address of the first byte of the first memory location for that object. Object addresses are distinct unless one object is nested within the other. 
*/

class errorDisable {
	public static void object(const char error, char *disable, char *name) {
		// TODO: disable error of arguments 
	}
}