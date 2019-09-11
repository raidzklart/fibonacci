def merge_sort(arr)
  return arr if arr.length < 2

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

arr1 = [1,2,3]
arr2 = [4,5,6]
p merge arr1, arr2