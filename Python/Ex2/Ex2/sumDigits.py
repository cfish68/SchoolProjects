def sumDigits2(n):
    lOfDigits = list(map(lambda i: i, n))
    l = list(filter(lambda x: x != ' ', lOfDigits))
    l = list(map(int, l))
    return sum(l)

def numDecom(n):
    if n > 0:
       l =  list(numDecom(int(n/10)))
       l.append(n%10)
       return l
    else:
        return []
    

    
def sumDigits1(n):
    lOfDigits = list(numDecom(eval(n)))
    return sum(lOfDigits)

n = input("Enter an integer number n (positive or negative):")
if(not isinstance(eval(n),int)):
    print('ERROR: Input number is incorrect!')
else:
    print(sumDigits1(n))
    print(sumDigits2(n))
