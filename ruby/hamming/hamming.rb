#!/usr/bin/env ruby

# Exercism 1
# Hamming Test

class Hamming

  def self.compute(str_1, str_2)

    str_1.length.times.count { |x| str_1[x-1] != str_2[x-1] }
    
  end

end