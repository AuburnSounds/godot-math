/*
    Copyright (c) 2014-2025 Godot Engine contributors.
    Copyright (c) 2007-2014 Juan Linietsky, Ariel Manzur. 
    Copyright (c) 2025 Guillaume Piolat
*/
module plane;

import godotmath;

pure nothrow @nogc @safe:

@("Plane basics")
unittest
{
    Plane A = Plane(1, 2, 3, 4);
    Plane B = Plane(Vector3(1, 2, 3), 4);
    assert(A.is_equal_approx(B));
}

@("Plane unary + and -")
unittest
{
    Plane A = Plane(1, 2, 3, 4);
    assert(+A == Plane(1, 2, 3, 4));
    assert(-A == Plane(-1, -2, -3, -4));
}