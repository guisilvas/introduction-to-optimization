# Test function
var('x')
f(x) = 3*x^2-36

# Bisection Technique(binary-search)
def bisection_method(f,a,b):
    p = a
    tol = 0
    p = (a + b)/2
    while (f(x=p) != 0) or (tol < exp(10)):
        if p*f(x=a) > 0:
            a = p 
        else:
            b = p
         
        p = (a + b)/2
        tol = tol+1
    return vector(RR,[p,f(x=p)])

a = RR(input("Enter the lower limit: "))
b = RR(input("Enter the upper limit:  "))

print("Root of function",f,"on interval [",a,",",b,"] ->",bisection_method(f,a,b))
