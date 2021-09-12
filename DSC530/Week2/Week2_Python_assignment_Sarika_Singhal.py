'''
Program Header:
Course : DSC530
Course Week :  2
Author : Sarika Singhal
Program Purpose : Display the text “Hello World! I wonder why that is always the default coding text to start with”
Add two numbers together
Subtract a number from another number
Multiply two numbers
Divide between two numbers
Concatenate two strings together (any words)
Create a list of 4 items (can be strings, numbers, both)
Append an item to your list (again, can be a string, number)
Create a tuple with 4 items (can be strings, numbers, both)
Description : 
Date Created : 9/10/2021

Change Control
'''
    

# The statement below prints the welcome message for the user

print("\n** Hello There, Welcome to the calculator!** \n")


#function to calculate the selected operation (+,-,*,/)
def performCalculation(Operation):
    #x, y = input("\nEnter TWO value to perform selected operation separated by SPACE i.e. (2 3): ").split()
    x  = input('\nEnter 1st number: ')
    y  = input('\nEnter second number: ')
    print('\nYou entered: '+ x +' & '+ y)
    if Operation ==1 :
        total = int(x)+int(y)
        print("\nAddition of the entered numbers: ", total)
    elif Operation ==2 :
        subtract = int(x)-int(y)
        print("\nSubtraction of the entered numbers: ", subtract)
    elif Operation ==3 :
        multiplication = int(x)*int(y)
        print("\nMultiplication of the entered numbers: ", multiplication)
    elif Operation ==4 :
        div = int(x)/int(y)
        print("\nDivision of the entered numbers: ", div) 
def performConcat():
    x  = "Hello"
    y  = "Everyone"
    print(x+' '+y)
def createlist():
    items = ["mobile", "laptop", "headset",5]
# append the keyboard item to the list 
    items.append("keyboard")
    print(items)

def createtuple():
    test_list = ["Apple", "Mango"]
    test_str = "Banana"
    res = tuple(test_list + [test_str])
    print(res)



# This main function takes the input (1-5) for specific operation
def main():
    print("Hello World and DSC530!\n")
    import os
    Operation = 1
    while True:
        try:
            print("Choose a numeric option \n1.add\n2.subtract\n3.multiply\n4.divide two numbers\n5.Concatenate 'Hello' & 'Everyone'\n6.Create List\n7.Create Tuple")
            Operation = int(input(""))
        except ValueError:
            print("The option entered is not an integer!")
            continue
        else:
            break

    if Operation in (1,2,3,4):
        performCalculation(Operation)
    elif Operation == 5:
        performConcat()
    elif Operation == 6:
        createlist()
    elif Operation == 7:
        createtuple()
    else :
        print("Incorrect Input is selected (select 1-7) ")

if __name__ == "__main__":
    main()