from functools import reduce
from math import sqrt
#
# Targil 4  
#
# Use the following input lists:
#

jctMarks = [[12345,75,'English'],
             [23452,83,'Physics'],
             [23560,81,'Statistics'],
             [23415,61,'Computer'],
             [23459,90,'Physics'],    
             [12345,75,'Computer'],
             [23452,100,'Statistics']]

teacherName = [['Aharoni','English'],
               ['Melamed','Physics'],
               ['Kaner','Computer'],
               ['Zloti','Statistics'],
               ['Korman','Philosophy']]

def average(L):
    if(len(L) == 0):
        return 0
    return reduce(lambda x, y: x + y , list(map(lambda a: a[1], L)))/ len(L)


def standardDev(L):
    if(len(L) < 2):
        return 0
    return sqrt(reduce(lambda x, y: (x-average(L))**2 + (y - average(L))**2, list(map(lambda a: a[1], L))) / (len(L)-1))


def myStudList(grades, martzim):
    return dict(map(lambda y: (y[0]  , [list(map(lambda x: x[0], list ((filter(lambda x: x[2] == y[1], grades))))) , (average(list((filter(lambda x: x[2] == y[1], grades)))), standardDev(list((filter(lambda x: x[2] == y[1], grades)))))]), martzim))
    

def programRun():
    result = myStudList(jctMarks, teacherName)
    for key, value  in sorted(result.items()):
        print (key, ',' , value[0], ', ', value[1][0] + ',' ,value[1][1])
        
        


programRun()