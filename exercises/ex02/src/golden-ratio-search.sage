"""
Name: Guilherme Soares Silva
Reg. Code: 2025119440
Algorithm: Ternary Search by Golden Ration section
"""

f(x) = x^2+2*x
a = RR(input("Enter the lower limit: "))
b = RR(input("Enter the upper limit: "))

# Ternary Search Method by Golden Ration section (minimum)
def ternary_search(f,a,b):
    i = 0.0001
    while abs(a-b) > i:
        a = (2*a-b)*0.382; b = (a-2*b)*0.618
        if f(c) > f(d):
            a = c
        else:
            b = d
    if a < b:
        return a
    else:
        return b
