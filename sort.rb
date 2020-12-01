# frozen_string_literal: true

def bubble_sort(arr)
  flag = true
  while flag
    flag = false
    (0...arr.size - 1).each do |i|
      if (arr[i] - arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        flag = true
      end
    end
  end
  arr
end

def bubble_sort_by(arr)
  flag = true
  while flag
    flag = false
    (0..arr.length - 2).each do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        flag = true
      end
    end
  end
  arr
end

p bubble_sort([5, 4, 3, 2, 1, 0])
p bubble_sort_by(%w[hi hello hey ahe he]) { |a, b| a.length - b.length }