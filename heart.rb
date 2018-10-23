#!/usr/bin/ruby
# heart.ruby v0.0.1
# nelbren@gmail.com
# First try!

@a = ['','','','','','','','']
8.times do |r|
  case r
    when 0
      @cb = 1
      @ce = 4
    when 1
      @cb = 0
      @ce = 5
    when 2
      @cb = 1
      @ce = 6
    else
      @cb = @cb + 1
  end
  7.times do |c|
    if (@cb..@ce).include?(c)
      @a[r] += 'x'
    else
      @a[r] += ' '
    end
  end
end

@a.each do |r|
  f = r + r.reverse
  p f
end
