#!/usr/bin/env ruby

# Exercism 14
# Sieve Test
# The algorithm consists of repeating the following over and over:

# Range ([2, limit])
# take the next available unmarked number in your list (it is prime)
# mark all the multiples of that number (they are not prime)

# logic
# 1. Create a list of consecutive integers from 2 through n: (2, 3, 4, ..., n).
# - Initially, let p equal 2, the first prime number.
# 2 Starting from p, enumerate its multiples by counting to n in increments of p, and mark them in the list (these will be 2p, 3p, 4p, ... ; the p itself should not be marked).
# 3 Find the first number greater than p in the list that is not marked. If there was no such number, stop. Otherwise, let p now equal this new number (which is the next prime), and repeat from step 3.



class Sieve

def initialize(num)
  @range = (2..num)
  @marked = []
end

def primes
  @range.each { |x| @marked << x*2 if x*2 <= @range.last }
  @marked
end




end

z = Sieve.new(11)

p z.primes