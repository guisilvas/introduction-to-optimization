# Exemple 1

# Variables: x1 = dog food; x2 = cat food
x1 = 0
x2 = 0

# Objective function: f(x1,x2)=40*x1+40*x2
f(x1,x2)=40*x1+40*x2

# Restrictions: 3*x1+2*x2 <= 1200; x1+2*x2 <= 800; x1 <= 300; x1, x2 >= 0

# ---

# Exercise 4

# Variables: a = option A; b = option B
a = 0
b = 0

# Objective function: f(a, b) = 0.1*a + 0.05*b
f(a,b) = 0.1*a + 0.05*b

# Restrictions: a+b=1000000000; a <= 3b; a, b >= 0
a + b = 100000000

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
	      b >= 25000000

	      - Now, we want to minimize b because its signal is negative, so, the smalle b in [25000000, 100000000] = 25000000
	      b = 25000000
	      a = 100000000 - 25000000 = 75000000
"""

# ---

# Exercise 5

# Variables: x = bean; y = rice
x = 0
y = 0

# Objective function: 

# Restrictions: 450*x+1200*y <= ; 30*x + 120*y <= 2400; 24*x + 60*y <= 1380
