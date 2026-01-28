var('x')
f(x) = x^3-6*x^2+x-2 # Test function

# Get lower and upper delimiters
a = RR(input("Enter the lower limit: "))
b = RR(input("Enter the upper limit: "))

# Shubert-Piyavskii Method(aka Sawtooth Method)
#def sawtooth_method(f,a,b):

# Ternary search implemantation (minimum)
def ternary_search(f,a,b):
    i = 0.0001
    while abs(b-a) > i:
        c = (2*a+b)*RR(0.382); d = (a+2*b)*RR(0.618)
        if f(x=c) < f(x=d):
            b = d
        else:
            a = c
    if a<b:
        return a, f(x=a)
    else:
        return b, f(x=b)

print("Minimum of ",f," is ",ternary_search(f,a,b))
