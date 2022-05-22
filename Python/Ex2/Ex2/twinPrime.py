#
# eratosthenes.py
# The Eratosthenes' algorithm
#
def napa(N):
    rishoni = [True]*N
    rishoni[0] = False
    # make rishoni to be an array of True values for prime numbers
    for i in range(2,N):
        if rishoni[i]:
            for mlt in range(i*2,N,i):
               rishoni[mlt]=False
    res = []
    for i, item in enumerate(rishoni):
       if item:
         res.append(i)
    return res[1:]


def twinp(n):
    nap = napa(n)
    keys = [x for x in nap if x + 2 in [y for y in nap]]
    return dict(zip(keys, [x for x in nap if x - 2 in keys]))
    

def inputOutput():
    num = input('Enter a Natural number n:\n')
    if(isinstance(eval(num), int) and eval(num) > 0):
        result = twinp(int(num))
        for key in result:
            print(key , result[key])
    else:
        print('ERROR: Input number is incorrect!')
inputOutput()
    
    
