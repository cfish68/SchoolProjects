# -*- coding: utf-8 -*-
"""
Created on Fri Feb 25 11:29:22 2022

@author: csfwn
"""

def is_correctInput(L):
    if isinstance(L, list) and len(L) == 4:
        for n in L:
            if not isinstance(n, (int, float)):
                return False
        return True  
def listMediums(L):
    L.remove(max(L))
    L.remove(min(L))
    return L
    
#input
numbers = eval(input("Enter a list of 4 numbers: "))
#calculations
if is_correctInput(numbers):
    result = listMediums(numbers)
else:
    result = "Error: the input must be a list of 4 numbers"

#output
print(result)