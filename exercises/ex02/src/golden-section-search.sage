"""
Name: Guilherme Soares Silva
Reg. Code: 2025119440
Algorithm: Golden Section Search
"""

var('x')
f(x) = 3*x^2+2*x-7
a = RR(input("Enter the lower limit: "))
b = RR(input("Enter the upper limit: "))

# Golden Section Search (minimum)
def ternary_search(f,a,b):
    i = RR(1e-4)
    phi = RR((sqrt(5)-1)/2)
    while abs(b-a) > i:
        c = b-phi*(b-a); d = a+phi*(b-a)
        if f(x=c) > f(x=d):
            a = c
        else:
            b = d
    if a < b:
        return a, f(x=a)
    else:
        return b, f(x=b)

print("Minimum of function ",f," is ",ternary_search(f,a,b))
