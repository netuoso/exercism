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

  @range = Hash.new
  (2..num).each { |x| @range[x] = true }

end

def primes
  @range.keys.map! { |x| @range[x*2] = false }

  @range.keys.select { |x| @range[x] == true }
end



end

z = Sieve.new(100)

p z.primes