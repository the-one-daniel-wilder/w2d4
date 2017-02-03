def my_min(array)

  array.select do |el1|
    array.none? do |el2|
      el2 < el1
    end
  end.first

end


# p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ]) # n^2


def my_min2(array)
  min = array.first

  array.each do |el|
    min = min > el ? el : min
  end
  min
end


# p my_min2([ 0, 3, 5, 4, -5, 10, 1, 90 ]) # n


def largest_contiguous_subsum(list)

  sub_array = []

  list.each_index do |i|
    list.each_index do |j|
      next if j < i
      sub_array << list[i..j]
    end
  end
sub_array
  # sub_array.max_by do |array|
  #   array.inject(:+)
  # end.inject(:+)

end
#n + n^3

 # p largest_contiguous_subsum([2, 3, -6, 7, -6, 7])


 def largest_contiguous_subsum_2(list)
    neg_max = list.first
    return neg_max if list.all? do |num|
     (neg_max = num) if (num > neg_max)
     num < 0
    end

    current = list[0]
    largest = list[0]


    list[1..-1].each do |el|
      current += el
      current = 0 if current < 0
      largest = current if current > largest

    end
    largest
 end
 p largest_contiguous_subsum_2([-2, -3, -6, -1, -6])
