#!/usr/bin/ruby
# heart.ruby v0.0.5
# nelbren@gmail.com
# Use: Case 2 Array

@a = ['','','','','','','','']
@rc = [ [1,4], [0,5], [1,6] ]
8.times do |r|
  if r > 2
    @cb += 1
  else
    @cb = @rc[r][0]
    @ce = @rc[r][1]
  end
  7.times { |c| @a[r] += (@cb..@ce).include?(c) ? 'x' : ' ' }
end

@a.each { |r| p r + r.reverse }
