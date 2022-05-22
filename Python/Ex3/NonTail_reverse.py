def reverseNum1(n):
    revN = n[::-1]
    return int(revN)

def NonTailRev1(n):
    if len(n) == 0:
        return ''
    else:
        print(len(n))
        return  n[len(n)-1] + NonTailRev1(n[0:len(n)-1])


def reverseNum2(n):
    lOfDigits = list(filter(lambda x: x!= ' ', list(map(lambda i: i, n))))
    lOfDigits.reverse()
    return ''.join(lOfDigits)
    
    
    
num = input('Enter an integer number n (positive or negative):')
if(isinstance(eval(num), int)):
    print(NonTailRev1(num))
    print(reverseNum2(num))   
else:
    print('ERROR: Input number is incorrect!')