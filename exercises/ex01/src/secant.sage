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
    while((x-b)<=tol):
	x = a-(f(x=a)*(b-a))/(f(x=b)-f(x=a))
	x1 = f(x=n)

res = secant_method(f,a,b,tol)
print(res)
