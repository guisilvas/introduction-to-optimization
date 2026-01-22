import random

# Get limits and tolerance
print("Enter the lower limit: ")
a = input()
print("Enter the upper limit: ")
b = input()
print("Enter the tolerance: ")
tol = input()

# Defining variable and function
var('x')
f(x) = x^2+6*x+8

# Plotting functions graphic
def plotting_graphic(f,a=0,b=0):
    x = var('x')
    p = plot(f(x),(x,a,b),title='Expression',color='blue')
    p.save('function-f.png')

plotting_graphic(f,a,b)

# Obtain the straith beetwen two points
def straight(p1,p2):
    m = p2-p1

# Random points generator
def set_point(a,b):
    x, y = sorted([randint(a, b), randint(a, b)])
    res = vector([x,y])
    if(x==y):
        res = set_point(a,b)
    return res

# Otain the root
def secant_method(f,a=0,b=5):
    x = var('x')
    

