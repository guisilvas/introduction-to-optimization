# Get function, lower and upper delimiters
var('x')
f(x) = input("Enter the function: ")
a = RR(input("Enter the lower limit: "))
b = RR(input("Enter the upper limit: "))

# Shubert-Piyavskii Method(aka Sawtooth Method)
#def sawtooth_method(f,a,b):

# Ternary search implemantation (minimum)
def ternary_search(f,a,b):
    c = (2*a+b)/3; d = (a+2*b)/3; i = 0.0001
    while abs(b-a) > i:
        if f(x=c) < f(x=d):
            b = d
        else:
            a = c
    return a if a < b else b

res = ternary_search(f,a,b)
print("Minimum of ",f," is ",res)
