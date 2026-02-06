def f(x,y):
    return (x-3)^2+(y+1)^2

# Exercise 1
def pattern_search(x=0,y=0):
    h = 1e-5; i = 1e-8; r = 0; tol = 10e3; a = x; b = y
    while x != 0 and y != 0:
        if r > tol:
            print("Iterations limit reachead.")   
        #search on x1
        while f(a - h,b) < f(a,b):
            a -= h; h -= i; i /= 10
        while f(a + h,b) < f(a,b):
            a += h; h += i; i /= 10
        #search on x2
        while f(a,b - h) < f(a,b):
            b -= h; h -= i; i /= 10
        while f(a,b + h) < f(a,b):
            b += h;h += i;i /= 10
        #search on vector direction
        while f(a + (a - x),b + (b - y)) < f(a,b):
            a += a - x;b += b - y;i /= 10;
        r += 1
    return vector(RR,[a,b,f(a,b)])

    """
    while true:
        if f(x-h,y) < f(x,y):
            x -= h
        elif f(x+h,y) < f(x,y):
            x += h
        else:
            return vector(RR,[x,f(x,y)])
    """

x = RR(input("Enter x value: "))
y = RR(input("Enter y value: "))
print("Function: f(x,y) = (x-3)^2+(y+1)^2\nApproximated Minimum: ",pattern_search(x,y))
