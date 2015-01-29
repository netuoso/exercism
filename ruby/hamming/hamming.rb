#!/usr/bin/env ruby

# Exercism 1
# Hamming Test

class Hamming

# Hold 0 in a global var for number of differences
  $count = 0

  def self.compute(str_1, str_2)

    if str_1.length == str_2.length

      if str_1 == str_2
        0
      elsif str_1.length == 1
        1
      elsif str_1.length >= 2
        arr_1 = str_1.split('')
        arr_2 = str_2.split('')

        until arr_1.count == 0 do
          if arr_1.pop != arr_2.pop
            $count += 1
          end
        end

        $count
        
      end

    else

      puts "You have input a sequence of improper length. Aborting."
      0

    end
    
  end

end