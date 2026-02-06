def f(x,y):
    return x^4+y^4-4*x*y+1

def min(x=0,y=0,tol=10e6,h=1e-1):
    return vector(RR,[f(x,y),f(x+h,y),f(x-h,y),f(x,y+h),f(x,y-h)])

# Exercise 1
print("(a)\nf(3,5) =",f(3,5),"\nf(2,0) =",f(2,0),"\nf(-4,1) =",f(-4,1))
print("(b)\n",min(3,5),"\n",min(2,0),"\n",min(-4,1))
