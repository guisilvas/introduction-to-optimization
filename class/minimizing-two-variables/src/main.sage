def f(x,y):
    return (x-3)^2+(y+1)^2

# Exercise 1
def pattern_search(x=0,y=0):
    h = 1e-5; i = 1e-8; r = 0; tol = 10e3
    #search on x1
    while f(x-h,y) < f(x,y):
        x -= h; h -= i; i -= i
        if r > tol: 
            print("Iteration limit reached.")
            break
    while f(x+h,y) < f(x,y):
        x += h; h += i; i -= i
        if r > tol: 
            print("Iteration limit reached.")
            break  
    #search on x2
    while f(x,y-h) < f(x,y):
        y -= h; h -= i; i -= i
        if r > tol: 
            print("Iteration limit reached.")
            break
    while f(x,y+h) < f(x,y):
        y += h; h += i; i -= i
        if r > tol: 
            print("Iteration limit reached.")
            break 
    return vector(RR,[x,y,f(x,y)])

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
