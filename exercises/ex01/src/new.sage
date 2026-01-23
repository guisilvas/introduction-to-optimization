# Function
var('x')
f(x) = x^2+6*x+8

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
print("Approximate root: ", v[0], "\nIterations: ", v[1])
g = plot(f,(x,-10,10),title='Function',color='red' + point((0,v[0]),color='blue'))
g.save('function.png')

