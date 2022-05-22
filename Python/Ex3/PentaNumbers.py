#tail recursive hw 1
#makes list of nums for output with a tail recursive function
def tailRecursivePentaNumRange(n1, n2, l1 = []):
    if n1 == n2:
        return l1
    return tailRecursivePentaNumRange(n1+1, n2, l1 + [n1*(3*n1-1)/2])


def NON_tailRecursivePentaNumRange(n1, n2, l1 = []):
    if n1 == n2:
        return l1
    return list(NON_tailRecursivePentaNumRange(n1+1, n2, l1 + [n1*(3*n1-1)/2]))

#recursively prints output.
def recursivePrint(penta, index, size):
    if index == size:
        return
    else:
        if(index%10 == 0):
            print('')
    print(float(penta[index]), end = ' ')
    recursivePrint(penta, index+1, size)


def printPentaNum():
    num1 = eval(input('enter the value of n1:\n'))
    num2 = eval(input('enter the value of n2:\n'))
    if(num1 > num2 or not isinstance(num1, int) or not isinstance(num2, int)):
        print('ERROR: the values must be positive integers and n2 > n1')
    else:
        pentaNums = NON_tailRecursivePentaNumRange(num1, num2)
        recursivePrint(pentaNums, 0, len(pentaNums))

printPentaNum()