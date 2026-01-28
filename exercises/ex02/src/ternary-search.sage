"""
Name: Guilherme Soares Silva
Reg. Code: 2025119440
Algorithm: Ternary Search with normal section
"""

var('x')
f(x) = x^2+2*x # Test function

# Get lower and upper delimiters
a = RR(input("Enter the lower limit: "))
b = RR(input("Enter the upper limit: "))

# Ternary search implemantation (minimum)
def ternary_search(f,a,b):
    i = 0.0001
    while abs(b-a) > i:
        c = (2*a+b)/3; d = (a+2*b)/3
        if f(x=c) < f(x=d):
            b = d
        else:
            a = c
    if a<b:
        return a, f(x=a)
    else:
        return b, f(x=b)

print("Minimum of ",f," is ",ternary_search(f,a,b))
