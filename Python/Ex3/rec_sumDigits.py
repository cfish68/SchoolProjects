

#function which will break apart al the digits and return all the sum of the digts.
def TailRecursive_sumDigits2(n, result = 0):
    if n == 0:
        return result
    else:
        return TailRecursive_sumDigits2(int(n/10), result + int(n%10))
    

def NonTail_sumDigits2(n):
    if(n == 0):
        return 0
    else:
            return NonTail_sumDigits2(int(n/10)) + int(n%10)
#Non tail recursive function to return a list of all the digits for the num entered
def nonTailRec_numDecom(n):
    if n > 0:
       l =  list(nonTailRec_numDecom(int(n/10)))
       l.append(n%10)
       return l
    else:
        return []
    

#Tail recursive function to return a list of all the digits for the num entered
def TailRec_numDecom(n, l = []):
    if n == 0:
        return l
    if n > 0:
        return TailRec_numDecom(int(n/10), l + [int(n%10)])
        

#function that will use numDecom function to return the sum of all the digits
def sumDigits1(n):
    lOfDigits = list(nonTailRec_numDecom(n))
    return sum(lOfDigits)

n = input("Enter an integer number n (positive or negative):\n")
if(not isinstance(eval(n),int)):
    print('ERROR: Input number is incorrect!\n')
else:
    print(sumDigits1(int(n)))
    print(NonTail_sumDigits2(int(n)))
