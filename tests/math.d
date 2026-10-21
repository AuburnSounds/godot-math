module math;

import godotmath;

pure nothrow @nogc @safe:

@("Math functions")
unittest
{
    assert(gm_is_equal_approx(gm_log2(8.0), 3.0));
    assert(gm_is_equal_approx(gm_log2(1024.0f), 10.0f));
    assert(gm_is_equal_approx(gm_log(GM_E), 1.0));
    assert(gm_is_equal_approx(gm_log(1.0f), 0.0f));
    assert(gm_is_equal_approx(gm_log10(10.0), 1.0));
    assert(gm_is_equal_approx(gm_log10(1.0f), 0.0f));
}