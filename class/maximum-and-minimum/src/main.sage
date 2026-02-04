# Closed Interval Method
def closed_interval(f,a,b):
    f1 = derivative(f); max = min = a; tol = 0
    while a <= b or tol > 10e4:
        if f(a) > f(max):
            max = a
        if f(a) < f(min):
            min = a
        a += 0.0001; tol += 1
    return vector(RR,[min,f(min),max,f(max)])

f(x) = 3*x^4-16*x^3+18*x^2
a = int(input("Enter the lower limit: "))
b = int(input("Enter the upper limit: "))

print("Function: ",f,"\nMin and Max: ",closed_interval(f,a,b))
