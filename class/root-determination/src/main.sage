# Test function
var('x')
f(x) = 3*x^2-36

# Bisection Technique(binary-search)
def bisection_method(f,a,b):
    p = a
    tol = 0
    while true:
        p = (a + b)/2
        if tol == exp(10):
            print("Iteration limit.")
            return None
        elif f(x=p) == 0:
            return p,f(x=p)
        elif p*f(x=a) > 0:
            a = p 
        else:
            b = p
        tol = tol+1

a = RR(input("Enter the lower limit: "))
b = RR(input("Enter the upper limit:  "))

print("Root of function",f,"on interval [",a,",",b,"] ->",bisection_method(f,a,b))
