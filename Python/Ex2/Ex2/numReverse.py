def reverseNum1(n):
    revN = n[::-1]
    return int(revN)


def reverseNum2(n):
    lOfDigits = list(filter(lambda x: x!= ' ', list(map(lambda i: i, n))))
    lOfDigits.reverse()
    return ''.join(lOfDigits)
    
    
    
num = input('Enter an integer number n (positive or negative):')
if(isinstance(eval(num), int)):
    print(reverseNum1(num))
    print(reverseNum2(num))   
else:
    print('ERROR: Input number is incorrect!')