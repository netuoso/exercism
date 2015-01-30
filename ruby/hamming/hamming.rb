#!/usr/bin/env ruby

# Exercism 1
# Hamming Test

class Hamming

  def self.compute(str_1, str_2)

    if str_1.length == str_2.length

      if str_1 == str_2
        0
      elsif str_1.length >= 1

        arr_1 = str_1.split('')
        arr_2 = str_2.split('')

        arr_1.length.times { |x| arr_1.pop != arr_2.pop }

      end

    else

      puts "You have input a sequence of improper length. Aborting."
      0

    end
    
  end

end