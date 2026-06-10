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

@("Plane * Transform3D")
unittest
{
    Plane P = Plane(Vector3(1, 1, 1), Vector3(0, 0, 0));
    P.normalize();

    // not superb example, but well
    Transform3D TR = Transform3D.IDENTITY;
    P = P * TR;

    Plane Q = TR * P;

    Vector3 Naxis = Vector3(1 / gm_sqrt(3.0), 1 / gm_sqrt(3.0), 1 / gm_sqrt(3.0));
    assert(P.is_equal_approx(Plane(Naxis, Vector3(0, 0, 0))));
}