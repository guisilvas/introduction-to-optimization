# Closed Interval Method
def closed_interval(f,a,b):
    f1 = derivative(f)
    max = min = f(a)
    while a <= b:
        if f1(a) == 0:
            if f(a) > max:
                max = a
            if f(a) < min:
                min = a
        a += 0.1
    return vector([min,f(min),max,f(max)])

f(x) = x^2+2*x
a = int(input("Enter the lower limit: "))
b = int(input("Enter the upper limit: "))

print("Function: ",f,"\nMin and Max: ",closed_interval(f,a,b))
