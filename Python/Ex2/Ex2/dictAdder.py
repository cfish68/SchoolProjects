def add3dicts(d1,d2,d3):
    l1 = [d1, d2, d3]
    # associate key with all approprate values
    make_tuples = lambda k: (k, tuple(map(lambda t: t[k], filter(lambda x: k in x, l1))))
    #if the tuple is infact a singleton (only one dict has that key) return it as a key and value as was intially
    fix_only_one = lambda t: (t[0], t[1][0] if len(t[1]) == 1 else t[1])
    a = dict(filter(lambda x: len(x[1]) == 3 ,map(make_tuples, set().union(d1,d2,d3))))
    b = dict(filter(lambda x: len(x[1]) == 2 ,map(make_tuples, set().union(d1,d2,d3))))
    c = dict(filter(lambda x: len(x[1]) == 1 ,map(make_tuples, set().union(d1,d2,d3))))
    for item in b:
        a[item] = b[item]
    for item in c:
        a[item] = c[item]
    return a
#gets input from user. checks for correcct input, gives appropriate output
def inputOutput():
    d1 = eval(input('Enter a dictionary:'))
    d2 = eval(input('Enter a dictionary:'))
    d3 = eval(input('Enter a dictionary:'))
    #check input
    if(not isinstance(d1, dict) or not isinstance(d2, dict) or not isinstance(d3, dict)):
        print('ERROR: Input is incorrect!')
    else:
        print(add3dicts(d1,d2,d3))


#runProgram
inputOutput()