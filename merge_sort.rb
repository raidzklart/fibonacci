def merge_sort(arr)
  return arr if arr.length < 2
  left = merge_sort(arr.each_slice( (arr.size/2.0).round ).to_a.first)
  right = merge_sort(arr.each_slice( (arr.size/2.0).round ).to_a.last)
  merge(left, right)
end

def merge(arr1, arr2)
  temp = []
  until arr1.empty? || arr2.empty?
    if arr1.first < arr2.first
        temp << arr1.first
        arr1.shift
    else
      temp << arr2.first
      arr2.shift
    end
  end
  temp += (arr1 + arr2)
end

arr = [9,20,7,66,1,44,5,33,3,4,2,6,101]
p merge_sort arr
