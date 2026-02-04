def func(x):
    return x^3-10*x^2+5

def tree_points_method(x,h=1e-4,n=10e3):
    x1 = x - h; x2 = x + h
    while i < n:
        if func(x1) < func(x) and func(x2) < func(x):
            res vector(RR,[x,func(x)])
        elif func(x1) < func(x) and func(x2) > func(x):
            x += h
        else:
            x -= h 
    return res

a = RR(input("Enter x value of point: "))
h = RR(input("Enter increment value: "))
n = input("Enter max iterations value")

print("Tree points method: ",tree_points_method(a,h,n))
