# frozen_string_literal: true

def fibs(num)
  res = []
  (num + 1).times do |i|
    res << i if i.between?(0, 1)
    res << (res[i - 1] + res[i - 2]) if i > 1
  end
  res
end

def fibs_rec(num, res = [], counter = 0)
  res << counter if counter.between?(0, 1)
  res << res[counter - 2] + res[counter - 1] if counter > 1
  return res if num.eql?(counter)

  fibs_rec(num, res, counter + 1)
  res
end
