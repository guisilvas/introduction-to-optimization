"""
Name: Guilherme Soares Silva
Reg. Code: 2025119440
Algorithm: Ternary Search by Golden Ration section
"""

var('x')
f(x) = 3*x^2+2*x-7
a = RR(input("Enter the lower limit: "))
b = RR(input("Enter the upper limit: "))

# Ternary Search Method by Golden Ration section (minimum)
def ternary_search(f,a,b):
    i = 0.0001
    while abs(b-a) > i:
        c = (2*a-b)*0.382; d = (a-2*b)*0.618
        if f(x=c) > f(x=d):
            a = c
        else:
            b = d
    if a < b:
        return a, f(x=a)
    else:
        return b, f(x=b)

print("Minimum of function ",f," is ",ternary_search(f,a,b))
