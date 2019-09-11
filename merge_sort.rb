def merge_sort(arr)
  return arr if arr.length < 2

end

def merge(arr1, arr2)
  temp = []
  until arr1.empty? && arr2.empty?
    if arr1[0].nil?
      temp << arr2[0]
      break
    end
    if arr2[0].nil?
      temp << arr1[0]
      break
    end
    if arr1[0] < arr2[0]
        temp << arr1[0]
        arr1.shift
    else
      temp << arr2[0]
      arr2.shift
    end
  end
  temp
end