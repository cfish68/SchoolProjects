
def pentaNumRange(n1,n2):
    getPentaNum = lambda n: n*(3*n-1)/2
    return list(map(getPentaNum, range(n1,n2)))

def recursivePrint(penta, index, size):
    if index == size:
        return
    else:
        if(index%10 == 0):
            print('')
    print(float(penta[index]), end = ' ')
    recursivePrint(penta, index+1, size)
def printPentaNum():
    num1 = eval(input('enter the value of n1:'))
    num2 = eval(input('enter the value of n2:'))
    if(num1 > num2 or not isinstance(num1, int) or not isinstance(num2, int)):
        print('ERROR: the values must be positive integers and n2 > n1')
    else:
        pentaNums = pentaNumRange(num1, num2)
        recursivePrint(pentaNums, 0, len(pentaNums))

printPentaNum()
    

