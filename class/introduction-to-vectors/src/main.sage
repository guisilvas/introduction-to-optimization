"""
Exercise 1

(a) 3, 4
(b) 5, -2, 8
(c) 6.1, 2.7, 0, 1.2, -4.9, 12.2

As a point, a column matrix and as a line matrix
"""

# (a) 3, 4
a = point((3,4))
aa = matrix([[3],[4]])
aaa = aa.transpose()

print("Exercise 1 \n")
print("A = ", a)
print(aa, " = A")
print("A^t = ", aaa)
print("\n")

# (b) 5, -2, 8
b = point((5, -2, 8))
bb = matrix([[5], [-2], [8]])
bbb = bb.transpose()

print("B = ", b)
print(bb, " = B")
print("B^t = ", bbb)
print("\n")

# (c) 6.1, 2.7, 0, 1.2, -4.9, 12.2
c = point((6.1, 2.7, 0, 1.2, -4.9, 12.2))
cc = matrix([[6.1], [2.7], [0], [1.2], [-4.9], [12.2]])
ccc = cc.transpose()

print("C = ", c)
print(cc, " = C")
print("C = ", ccc)
print("\n")

# ---

"""
Exercise 2
P = P0 + v*x

(a) P0 = (5,3), v = [-6,2], x = 2.5
(b) P0 = (-1,-4), v = [1,3], x = 0.1
(c) P0 = (5,0), v = [5,5], x = -2
(d) P = (4,1), P0 = (3,-6), x = 1
(e) P = (3,-2), P0 = (4,5), x = 0.4
(f) P = (5,1), P0 = (3,6), v = [4,-10]
(g) P = (-4,-2), v = [5,1], x = 2

(a) P = (5,3) + [-6,2]*2.5
    P = (5,3) + [-15,5]
    P = (-10,8)

(b) P = (-1,-4) + [1,3]*0.1
    P = (-1,-4) + [0.1,0.3]
    P = (-0.9,-3.7)

(c) P = (5.0) + [5,5]*(-2)
    P = (5,0) + [-10,-10]
    P = (-5,-10)

(d) (4,1) = (3,-6) + v*1
    v = (4,1) - (3,-6)
    v = [1,7]

(e) (3,-2) = (4,5) + v*0.4
    v = [(3,-2) - (4,5)]/0.4
    v = (-1,-7)/0.4
    v = [-2.5,-17.5]

(f) (5,1) = (3,6) + [4,-10]*x
    x = [(5,1) - (3,6)]/[4,-10]
    x = 0.5

(g) (-4,-2) = P0 + [5,1]*2
    P0 = (-4,-2) - [10,2]
    P0 = (-14,-4)
"""

# ---

print("Exercise 2\n")
print("Enter the expression: P = P0 + v*x\n")

# P
print("P = ")
a = input(); b = input()
p = vector([a,b])

# P0
print("P0 = ")
a = input(); b = input()
p0 = vector([a,b])

# V
print("v = ")
a = input(); b = input()
v = vector([a,b])

# x
print("x = ")
x = input()

def unknow(p, p0, v, x):
	if p == 0:
		print("P = ", p0+v*x)
	elif p0 == 0:
		print("P0 = ", p-v*x)
	elif v == 0:
		print("v = ", (p-p0)/x)
	else:
		print("x = ", (p-p0)*v^(-1))

unknow(p, p0, v, x)

""" 
Exercise 3
Why (5,1) = (3,6) + [2,4]*x is impossible?

(5,1) = (3,6) + [2,4]*x
(5,1) - (3,6) = [2,4]*x
x = (2,-5)/[2,4]
x = (1,-1.25)

"""

"""
Exercise 4


"""
