# Get points x0, x1 and tolerance
print("Enter a value for x0: ")
x0 = input()

print("Enter a value for x1: ")
x1 = input()

print("Enter the TOL valure: )
tol = input()

# Function to be evalueted
var('x')
f(x) = x^2+6*x+8

# Function calc
def func_calc(f,x=0):
    return solve(f,x)

# Secant function
def secant_calc():
    
