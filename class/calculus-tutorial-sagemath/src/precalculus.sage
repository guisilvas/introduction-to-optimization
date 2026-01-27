"""

# Defining a function
f(x) = 2*x
print("f(2) = ", f(2), "\nf(-2) = ", f(-2), "\nf(0) = ", f(0), "(root)")

m = -2
n = 1/10
a = 1
b = 2

def f(x):
    return 2*x

# Saving graphic of functions
plot(m*f(n*(x-a))+b, x, -10, 10).save('m*f(n*(x-a))+b.png')
plot(sin(x), x, -10, 10).save(./graphic/'sin(x).png')

"""

p  = plot((x^2-1)/(x-1), x, -1, 3)
pt  = point((1,2), rgbcolor='white', pointsize=30, faceted=True)
g = p + pt
g.save('(x^2-1)/(x-1).png')
