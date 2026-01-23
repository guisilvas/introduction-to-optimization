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
tol = RR(input("Enter tolerance: "))

# Secant function
def secant_method(f,x0,x1,tol):
    fnum = f.function(x)
    i = 0
    while 1:
	    i+=1
	    if fnum(x0) == 0:
	    	return x0
		if fnum(x1) == 0:
	    	return x1
		if fnum(x0) - fnum(x1) == 0:
	    	return None
		x2 = x0 - fnum(x0)*(x1-x0)/(fnum(x1)-fnum(x0))
		x0 = x1
		x1 = x2
		if abs(x1-x0)<tol:
	    	break
    print("Iterations: ", i)
    return x2

res = secant_method(f,a,b,tol)
print(res)
