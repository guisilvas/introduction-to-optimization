# Exemple 1
print("Exemple 1")

x1 = x2 = 0
print("Variables:\nDog food x1 = ",x1,"\nCat food x2 = ",x2)

f(x1,x2) = 40*x1 + 40*x2
print("\nObjective function:\nf(x) = ",f(x1,x2))

print("\nRestrictions:\n3*x1+2*x2 <= 1200\nx1+2*x2 <= 800\nx1 <= 300\nx1, x2 >= 0")

print("\n---\n")

# Exercise 1
maximized = ['call minutes per month','amount of data per mounth','phone storage amount']
minimized = ['plan cost per month','phone cost','energy consumption']
cannotOptmize = ['disponible brands and models','have 4G signal']

print("Exercise 1")
print("Maximized: ")
for i in range (0,len(maximized)):
    print(maximized[i])

print("\nMinimized:")
for i in range (0,len(minimized)):
    print(minimized[i])

print("\nCannot optimize:")
for i in range (0,len(cannotOptmize)):
    print(cannotOptmize[i])

print("\n---\n")

# Exercise 2
print("\nExercise 2 \nMaximize fuel consumption")
notVariable = ['ease of use','type of propulsion']
link = ['velocity >= 300m/s','reach >= 2000km','noise <= 200dB','weight <= 2000kg','cost <= 20,000,000USD','load capacity >= 2,000kg']

print("\nNot variable:")
for i in range (0,len(notVariable)):
    print(notVariable[i])

print("\nLinks:")
for i in range (1,len(link)):
    print(link[i])

print("\n---\n")

# Exercise 3
print("Exercise 3")

print("(a) Maximize grade")
print("Links:\ndispend time <= 3h\nmaterial cost <= 20USD")

print("\n(b) Minimize delivery time")
print("Links:\nfuel usage <= 1 tank\nroute taken <= 50km")

print("\n(c) Minimize usage space")
print("Links:\nproduct units >= 0\nspace usage >= 2m^2")

print("\n---\n")

# Exercise 4
print("Exercise 4")

a = 0
b = 0
print("\nVariables:\na(option A) = ", a, "\nb(option B) = ", b)

f(a,b) = 0.1*a + 0.05*b
print("\nObjective function:\nf(a,b) = ", f(a,b))

print("\nRestrictions:\na+b=1000000000\na <= 3b\na, b >= 0")

""" Solution: As a linear function we can use a system of 2 variables

       	      - Objective function: f(a,b) = 0.1*a + 0.05*b
	      - Restrictions: a + b = 1000000000; a, b >= 0; a <= 3b
	
	      - Isolating a:
	      a = 1000000000 - b

	      - Replacing a on Objective function:
	      f(a.b) = 0.1*(100000000-b) + 0.05*b
	      f(a,b) = 10000000 - 0.1*b + 0.05*b
	      f(a.b) = 10000000 - 0.5b

	      - Replacing a on restriction a <= 3b
	      1000000000 - b <= 3b
	      1000000000 <= 4b
	      b >= 25000002

	      - Now, we want to minimize b because its signal is negative, so, the smaller b in range [25000000, 100000000] = 25000000
	      b = 25000000
	      a = 100000000 - 25000000 = 75000000
"""

print("\n---\n")

# Exercise 5
print("Exercise 5")

x = 0
y = 0
print("\nVariables:\nx(bean) = ", x, "\ny(rice) = ", y)

f(x,y) = 450*x + 1200*y
print("\nObjective function:\nf(x) = ",f(x,y))

print("\nRestrictions:\n30*x + 120*y <= 2400\n24*x + 60*y <= 1380\nx + y <= 40\ny <= 20\nx, y >= 0")

""" Solution:
	Objective function: P = 450*x+1200*y
	Restrictions:
		30*x+120*y=2400
		24*x+60*y=1380
		y <= 20
		x , y >= 0
		
	- Equations System:
	(I) 30*x+120*y=2400 (/2)
	(II) 24*x+60*y=1380
	
	(I) 15*x+60*y=1200 
	(II) 24*x+60*y=1380
	(II) - (I) = 19*x = 180 -> x = 9.473684211

	- Replacing x on (I)
	30*9.473684211+120*y=2400 -> y = 17.631578947
	
	- The maximum profit is:
	f(x,y)=450*x+1200*y 
	f(9.473684211,17.631578947)=450*9.473684211+1200*17.631578947=4263.15789495+21157.8947367=25421.05263165

	- Max profit: 25421.05263165
"""

