# Function
var('x')
f(x) = x^2+6*x+8
f1(x) = x^3-15*x+12
f2(x) = x^4-3*x^3+5*x-10
f3(x) = e^2*x-3-4*sin(x)
f4(x) = 3*x^2-2*sin(x)+x-e^2*x

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
    j = 0
    while j<i or abs(b - a)<=tol:
        if f(x=b)-f(x=a) == 0:
            return 0
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
v1 = vector(secant_method(f1,a,b,tol))
v2 = vector(secant_method(f2,a,b,tol))
v3 = vector(secant_method(f3,a,b,tol))
v4 = vector(secant_method(f4,a,b,tol))
print("Approximate root: ", v[0], "\nIterations: ", v[1])

# g = plot(f,(x,a,b),title='Function',color='#ff00ff' + point((0,v[0])))

