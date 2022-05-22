from pickle import TRUE


#copied from num reverse
def reverseNum1(n):
    revN = n[::-1]
    return int(revN)

def isPalindrom(n):
    if(int(n) == reverseNum1(n)):
        return TRUE
    return False

num = input('Enter an integer number n (positive or negative):')
if(isinstance(eval(num), int)):
    if(isPalindrom(num)):
        print("It is a palindrome!!")
    else:
        print("It is not a palindrome")
else:
    print('ERROR: Input number is incorrect!')
