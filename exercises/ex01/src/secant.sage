# Function to be evalueted
var('x')
f = x^2+6*x+8

# Get points x0, x1 and tolerance
while(1):
	print("Enter x0: ")
	a = input()
	print("Enter x1: ")
	b = input()
	if(f(x=a)*f(x=b) < 0):
		break
	print("Continuous function necessary, f(x0) times f(x1) must be bigger than zero.")
	    
print("Enter tol: )
tol = input()

# Secant function
def secant_method(f,a,b,tol):
    while(x-b <= tol):
	p = a - f(x=a)*(b-a) / f(x=b)-f(x=a)
	if f(x=a)*f(x=xn) < 0:
	    return secant_method(f,a,p,tol)
	elif f(x=b)*f(x=p) < 0:
	    return secant_method(f,p,b,tol)
	elif ():
	    
	else:
	    return 0

res = secant_method(f,a,b,tol)
print(res)
