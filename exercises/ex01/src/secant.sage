# Function to be evalueted
var('x')
f = x^2+6*x+8

# Get points x0, x1 and tolerance
while 1:
	a = RR(input("Enter x0: "))
	b = RR(input("Enter x1: "))
	if(f(x=a)*f(x=b) < 0):
		break
	print("Continuous function necessary, f(x0) times f(x1) must be negative.")
tol = RR(input("Enter tolerance: "")

# Secant function
def secant_method(f,a,b,tol):
    func = f.function(x)
    i = 0
    while 1:
	p0 = a - f(x=a)*(b-a) / f(x=b)-f(x=a)
	if f(x=a)*f(x=p) < 0:
	    b = p
	    p1 = p0
	elif f(x=b)*f(x=p) < 0:
	    a = b
	    b = p
            p1 = p0	    
	elif p1-p0 <= tol:
	    break
    return p1-p0

res = secant_method(f,a,b,tol)
print(res)
