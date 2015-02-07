#!/usr/bin/env ruby

# Exercism 16
# Accumulate
# Without using collect/map/fmap

module Accumulate

  def accumulate
    self
  end

end

class Array
  include Accumulate
end