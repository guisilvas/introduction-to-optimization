""" Exercise 1

(a) 3, 4
(b) 5, -2, 8
(c) 6.1, 2.7, 0, 1.2, -4.9, 12.2

As a point, a column matrix and as a line matrix

"""
# (a) 3, 4
a = vector(QQ, [3, 4])
aa = matrix([[3],[4]])
aaa = aa.transpose()

print("a = ", a)
print("A = ", aa)
print("A^t = ", aaa)
