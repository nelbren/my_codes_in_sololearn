#!/usr/bin/ruby
# heart.ruby v0.0.8
# nelbren@gmail.com
# Array2NewAssign''

a = Array.new(8, '')
rc = [ [1,4], [0,5], [1,6] ]
cb,ce = 0
8.times do |r|
  if r > 2
    cb += 1
  else
    cb,ce = rc[r][0],rc[r][1]
  end
  7.times { |c| a[r] += (cb..ce).include?(c) ? 'x' : ' ' }
end

a.each { |r| p r + r.reverse }
