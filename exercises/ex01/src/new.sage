# Function
var('x')
f(x) = x^2+6*x+8
f1(x) = x^3-15*x+12
f2(x) = x^4-3*x^3+5*x-10
f3(x) = exp(2*x)-3-4*sin(x)
f4(x) = 3*x^2-2*sin(x)+x-exp(2*x)

# Get values
a = RR(input("Enter lower limit: "))
b = RR(input("Enter upper limit: "))
tol = RR(input("Enter tolerance: "))

# Pseudo random points
def random_point(a,b):
    while 1:
        x = RR.random_element(a, b)
        y = RR.random_element(a, b)
        if x!=y:
            return vector([x,y])

# Secant Method
def secant_method(f,a,b,tol):
    i = 1000 # Max iterations
    c = 0
    j = 0
    while j<i or abs(b - a)<=tol:
        if f(x=b)-f(x=a) == 0:
            res = 0
            break
        if f(x=a) == 0:
            res = f(x=a)
            break
        if f(x=b) == 0:
            res = f(x=b)
            break
        c = b - f(x=(b))*(b-a)/(f(x=b)-f(x=a))
        a = b
        b = c
        j+=1
    return vector([c, j])

v = vector(secant_method(f,a,b,tol))
print("Function: ", f, "\nApproximate root: ", v[0], "\nIterations: ", v[1], "\n")

v1 = vector(secant_method(f1,a,b,tol))
print("Function: ", f1, "\nApproximate root: ", v1[0], "\nIterations: ", v1[1], "\n")

v2 = vector(secant_method(f2,a,b,tol))
print("Function: ", f2, "\nApproximate root: ", v2[0], "\nIterations: ", v2[1], "\n")

v3 = vector(secant_method(f3,a,b,tol))
print("Function: ", f3, "\nApproximate root: ", v3[0], "\nIterations: ", v3[1], "\n")

v4 = vector(secant_method(f4,a,b,tol))
print("Function: ", f4, "\nApproximate root: ", v4[0], "\nIterations: ", v4[1], "\n")


# g = plot(f,(x,a,b),title='Function',color='#ff00ff' + point((0,v[0])))

