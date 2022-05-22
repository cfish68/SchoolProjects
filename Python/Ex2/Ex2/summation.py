

def m(n):
    listOfFormula = list(map(lambda x: x/(x+1), range(1, n+1)))
    return sum(listOfFormula)
    
    

def printFunc():
    num = input('Enter an integer number n (positive or negative):')
    if(isinstance(eval(num), int) and eval(num) > 0):
        nums = list(range(1,eval(num)+1))
        result = {v: m(v) for v in nums}
        for x, y in result.items():
            print(x, y)
    else:
        print('ERROR: Input number is incorrect!')


printFunc()