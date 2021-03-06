using DoubleDouble

x = sqrt(2.0)
bx = big(x)
sx = Single(x)
dx = Double(x)

y = 0.1
by = big(y)
sy = Single(y)
dy = Double(y)

@assert x == sx == dx
@assert y == sy == dy

dxy = dx*dy
bxy = bx*by
@assert sx*sy == dxy
@assert x*y == float64(dxy)
@assert dxy == double(bxy)

@assert x+y == float64(dx+dy)
@assert dx+dy == double(bx+by)

@assert x-y == float64(dx-dy)
@assert dx-dy == double(bx-by)

@assert x/y == float64(dx/dy)
@assert dx/dy == double(bx/by)

@assert sqrt(y) == float64(sqrt(dy))
@assert sqrt(dy) == double(sqrt(by))

@assert rem(dxy,1.0) == double(rem(bxy,1.0))
