def pi(n):
    return 4*sum([(((-1)**(i+1))/(2*i - 1)) for i in range(1, n+1)])
def printFunc():
    num = input('Enter a Natural number n:\n')
    if(isinstance(eval(num), int) and eval(num) > 0):
        nums = list(range(1,eval(num)+1))
        result = {v: pi(v) for v in nums}
        for x, y in result.items():
            print(x, y)
    else:
        print('ERROR: Input number is incorrect!')
printFunc()
