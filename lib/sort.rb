require 'pry'

class Array

  # def bubble_sort
  #   return self if self.size <= 1 #an array of 1 element
  #   swap = true #set initial value of swap
  #   while swap do
  #     swap = false
  #     1.upto(self.size-1) do |i| #start from the second item upto the last
  #       if self[i-1] > self[i] #previous item is greater the current item?
  #         self[i-1], self[i] = self[i], self[i-1] #if true, swap them
  #         swap = true #remember there was a swap
  #       end
  #     end
  #   end
  #   self
  # end


  def bubble_sort
    return self if self.size <= 1 #an array of 1 element
    1.upto(self.size-1) do |i|
      1.upto(self.size-i) do |j|
        if self[j-1] > self[j] #previous item is greater the current item?
          self[j-1], self[j] = self[j], self[j-1] #if true, swap them
        end
      end
    end
    self
  end

  # This next example is slightly quicker, but not by an order of magnitude.
  # Because bubble sort we can assume after each sort,
  # the last item in the array will always be the largest;
  # therefore we do not need to check it

  def opto_bsort
    return self if self.size <= 1
    length = self.size
    until length == 0 do
      counter = 0
      (1...length).each do |i|
        if self[i-1] > self[i]
          self[i-1], self[i] = self[i], self[i-1]
          counter = i
        end
      end
      length = counter #length is contantly decremented
    end
    self
  end

end

a = Array.new [6,4,2,1,3]

a.bubble_sort()