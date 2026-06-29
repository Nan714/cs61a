def welcome():
     print('Go')
     return 'hello'

def cal():
     print('Bears')
     return 'world'

welcome()

def bake(cake, make):
    if cake == 0:
        cake = cake + 1
        print(cake)
    if cake == 1:
        print(make)
    else:
        return cake
    return make

bake(1,"mashed")

def sum_digits(y):
    """Sum all the digits of y.

    >>> sum_digits(10) # 1 + 0 = 1
    1
    >>> sum_digits(4224) # 4 + 2 + 2 + 4 = 12
    12
    >>> sum_digits(1234567890)
    45
    >>> a = sum_digits(123) # make sure that you are using return rather than print
    >>> a
    6
    """
    "*** YOUR CODE HERE ***"
    ans = 0
    while y:
        ans += y % 10
        y //= 10
    return ans
print(sum_digits(123))

print(5//2)