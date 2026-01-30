print("Exercise 1")
# Prime verification by iteration
def prime(x):
    res = 'Prime'
    for i in range(2,x):
        if x%i == 0:
            res = 'Not prime'
    return res

x = int(input("Enter a number to verify prime: "))
print(prime(x))

print("\nExercise 2")
# Collatz Conjecture by recursion
def collatz(x):
    if x == 1:
        return 1
    elif x%2 == 0:
        return collatz(x/2)
    else:
        return collatz(3*x+1)

x = int(input("Enter a number to verify collatz: "))
print(collatz(x))
