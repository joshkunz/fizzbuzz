# Language Python (http://python.org)
# To Run:
# $ python fizzbuzz.py

# Ultra Simple Fizz Buzz
for n in range(1, 101):
    if n % 3 == 0 and n % 5 == 0:
        print "FizzBuzz"
    elif n % 3 == 0:
        print "Fizz"
    elif n % 5 == 0:
        print "Buzz"
    else:
        print n

print "--- One-Liner ---"
# Condensed One-Liner
print"\n".join(["","Fizz"][f]+["","Buzz"][b]if f+b else str(x)for(x,f,b)in[(x,x%3==0,x%5==0)for x in range(1,101)])
