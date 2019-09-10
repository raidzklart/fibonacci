def fibs(n)
  arr = [0,1]
  return 0 if n == 0
  (n-1).times { arr << arr[-1] + arr[-2]}
  arr[-1]
end

def fibs_rec(n)
  return 0 if n == 0
  return 1 if n == 1
  fibs_rec(n-2) + fibs_rec(n-1)
end

puts fibs 0
puts fibs 1
puts fibs 2
puts fibs 3
puts fibs 4
puts fibs 5
puts fibs 6
puts fibs 7
puts fibs 8
puts fibs 9
puts fibs 10



