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

# Intersection of the line and the curve
def interception(p1,p2):
    var('x y')
    if p1[0]==p2[0]:
	line_eq = x == p1[0]
    else:
	m = 
    return solve([y,x], y,x)

# Straith beetwen two points
def straight(p1,p2):
    var('x y')
    if p1[0]==p2[0]:
	return x==p1[0]
    m = (p2[1]-p1[1])/(p2[0]-p1[0])
    b = p1[1]-m*p1[0]
    return y==m*x+b

# Random points generator
def gen_point(a,b):
    while(1):
        x, y = sorted([randint(a, b), randint(a, b)])
        if x!=y:
            return vector([x,y])

# Otain the root
def secant_method(f,a=0,b=5):
    x = var('x')
    

