# Test function
#var('x')
#f(x) = 3*x^2-36

def calc_f(x):
    return 3*x^2-36

# Bisection Technique(binary-search)
def bisection_method(a,b):
    i = 0
    c = (a + b)/2
    while (abs(calc_f(c)) >= 1e-4) or (i < 100):
        if calc_f(a)*calc_f(c) > 0:
            a = c
        else:
            b = c
        c = (a + b)/2
        i += 1
    return vector(RR,[c,calc_f(c)])

a = RR(input("Enter the lower limit: "))
b = RR(input("Enter the upper limit: "))

res = bisection_method(a,b)
print("Root on interval [",a,",",b,"] ->",res)
