def bad_two_sum(array, target)

    array.each do |el1|
      array.each do |el2|
        return true if el1 + el2 == target
      end
    end
  false

end

# p bad_two_sum([1,2,3,4,5], 9)



def two_sum_sort(array, target)
  array = array.sort
  i = 0
  j = array.length - 1
  while i < j
    sum = array[j] + array[i]
    return true if sum == target
    j -= 1 if sum > target
    i += 1 if sum < target
  end
  false
end
# p two_sum_sort([0, 1, 5, 7], 6)
# p two_sum_sort([0, 1, 5, 7], 10)
# p two_sum_sort([0, 1, -1], -1)


def two_sum_big_gun(array, target)
  nums = Hash.new(0)

  array.each do |el|
    nums[el] += 1
  end

  array.any? do |el|
   wing = target - el
   nums[wing] > 0
  end

end

p two_sum_big_gun([0, 1, 5, 7], 10)

# nums = Hash.new(0)
#
#
# p nums["hohp"]
