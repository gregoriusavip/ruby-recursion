# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length <= 1

  left = merge_sort(arr[0...arr.length / 2])
  right = merge_sort(arr[(arr.length / 2)...arr.length])

  merge(left, right)
end

def merge(left_arr, right_arr)
  merged_arr = []
  until left_arr.empty? || right_arr.empty?
    merged_arr << if left_arr[0] < right_arr[0]
                    left_arr.shift
                  else
                    right_arr.shift
                  end
  end
  left_arr.empty? ? merged_arr.concat(right_arr) : merged_arr.concat(left_arr)
end
