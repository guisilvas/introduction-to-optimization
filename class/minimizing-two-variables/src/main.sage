var('x','y')
f(x,y)=(x-3)^2+(y+1)^2

def patter_search(f,x=0,y=0,h=0.1,n=10e2):
    i = 0
    while i < n:
        if (x+h,y) < (x,y):
            x += h
        elif (x-h,y) < (x,y):
            x -= h
        i += 1
    while i < n*2:
        if (x,y+h) < (x,y):
            y += h
        elif (x,y-h) < (x,y):
            y -= h
        i += 1
    return vector(RR,[x,y])

print(patter_search(f))
