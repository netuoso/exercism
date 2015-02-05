#!/usr/bin/env ruby

# Exercism 15
# Binary string to decimal number conversion

# 10111 => 1*2^4 + 0*2^3 + 1*2^2 + 1*2^1 + 1*2^0
# 10111 => 1*2^0 + 1*2^1 + 1*2^2 + 0*2^3 + 1*2^4

class Binary

  def initialize(string)
    @binary = string
    @dec_num = 0
  end

  def to_decimal
  end

end

z = Binary.new("lw")
p z.to_decimal