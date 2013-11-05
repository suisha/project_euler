=begin
Euler discovered the remarkable quadratic formula:

n� + n + 41

It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 41� + 41 + 41 is clearly divisible by 41.

The incredible formula  n� - 79n + 1601 was discovered, which produces 80 primes for the consecutive values n = 0 to 79. The product of the coefficients, -79 and 1601, is -126479.

Considering quadratics of the form:

n� + an + b, where |a| < 1000 and |b| < 1000

where |n| is the modulus/absolute value of n
e.g. |11| = 11 and |-4| = 4
Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.

=end 

require 'prime'

def consecutive_primes(a, b)
  result = 3
  n = 0
  while result.prime?
    result = n ** 2 + a * n + b
    n += 1        
  end 
  n
end 

(1...1000000).each do |i|
  puts i
  consecutive_primes(i, i)
end 
