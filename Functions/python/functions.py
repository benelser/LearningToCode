import datetime as dt

def main():
    sayHello("Benjamin", getAge(1987))
    sayHello("Bob", getAge(2010))
    sayHello("Andrew", getAge(2005))
    

def sayHello(name: str, age: int):
    if age < 21:
        print("Hello there %s! You are not old enough to drink\nYou are only %d years old!" % (name, age))
    else:
         print("Hello there %s! You are %d years old! Emjoy your DRANK!" % (name, age))

def getAge(birthYear: int) -> int:
    current_year = dt.datetime.now().year
    return current_year - birthYear
    
main()