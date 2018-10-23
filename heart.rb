#!/usr/bin/ruby
# heart.ruby v0.0.9
# nelbren@gmail.com
# ReplaceIfForTwoIf

a = Array.new(8, '')
rc = [ [1,4], [0,5], [1,6] ]
cb,ce = 0
8.times do |r|
  cb += 1 if r > 2
  cb,ce = rc[r][0],rc[r][1] if r <= 2
  7.times { |c| a[r] += (cb..ce).include?(c) ? 'x' : ' ' }
end
a.each { |r| p r + r.reverse }
