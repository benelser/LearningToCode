age = 20
name = "benjamin"

if age < 21:
    print("Hello there %s! You are not old enough to drink\nYou are only %d years old!" % (name, age))

# Loops start here

# Foreach loop
numbers = [1,2,3,4,5]
for num in numbers:
    print(num)


# python doesn't have the classic C for loop

# While loop
counter = 0
while counter != 10:
    print("Counter is: %d" % counter)
    counter += 2