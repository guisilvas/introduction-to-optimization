#Bisection Method
def calc_f(x):
    return 3*x^2-36

def bisection_method(a,b,tol=1e-4,N=1000):
    i = 0; c = (a + b)/2
    while (abs(calc_f(c)) >= tol) or (i < N):
        if calc_f(a)*calc_f(c) > 0:
            a = c
        else:
            b = c
        c = (a + b)/2
        i += 1
    return vector(RR,[c,calc_f(c)])

a = RR(input("Enter the lower limit: "))
b = RR(input("Enter the upper limit: "))
tol = RR(input("Enter tolerance: "))
N = RR(input("Enter iterations max: "))

print("Root on interval [",a,",",b,"] ->",bisection_method(a,b,tol,N))

#Secant Method
def secant_method(a,b,tol=1e-4,N=1000):
    i = 0; c = a
    while abs(b - a) < tol or i < N:
        c = b - (calc_f(b)*(b - a))/calc_f(b) - calc_f(a)
        a = b; b = c; i += 1
    return vector(RR,[c,calc_f(c)])

print("Secant method: ",secant_method(a,b,tol,N))

"""
Line Equation

General: ax+by+c=0
Reduced: y=ax+b

det |x  y  1 |
    |x1 y1 1 |
    |x2 y2 1 |

or

y-y0/y1-y0 = x-x0/x1-x0
"""

"""
x interception

when y=0
"""
