from functools import reduce
a = 'abcefg'
print(reduce(lambda output, current: output + [current], 'abc', []))
print(reduce(lambda output, current: [current] + output, 'abc', []))
print(reduce(lambda output, current: [ord(current)] + output, a, []))

