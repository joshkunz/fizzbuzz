# To Run:
# $ python fizzbuzz.py

# Ultra Simple Fizz Buzz
for n in range(101):
    if n % 3 == 0 and n % 5 == 0:
        print n, "FizzBuzz"
    elif n % 3 == 0:
        print n, "Fizz"
    elif n % 5 == 0:
        print n, "Buzz"
    else:
        print n

# Condensed One-Liner
print'\n'.join('%d %s%s'%(x,'Fizz'if x%3==0 else'','Buzz'if x%5==0 else'')for x in range(101))
