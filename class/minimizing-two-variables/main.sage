def f(x,y):
    return (x-3)^2+(y+1)^2

# Exercise 1
def pattern_search(x=0,y=0):
    h = 1e-2
    while true:
        if f(x-h,y) < f(x,y):
            x -= h
        elif f(x+h,y) < f(x,y):
            x += h
        else:
            return vector(RR,[x,f(x,y)])

x = RR(input("Enter x value: "))
y = RR(input("Enter y value: "))
print(pattern_search(x,y))
