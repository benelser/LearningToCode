import csv

class Person:

    # Constructor 
    def __init__(self, fn, ln, a):
        # props strong tpes are not required 
        self.firstName: str = fn
        self.lastName: str = ln 
        self.age: int = a

# with is similar to C# using statement 
with open('../data.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
        if line_count == 0:
            print(f'Column names are {", ".join(row)}')
            line_count += 1
        else:
            p = Person(row[0], row[1], int(row[2]))
            print("FN: %s LN: %s Age: %d" % (p.firstName, p.lastName , p.age))