# check check
a = Time.now
i = 0
j = 0
t1 = Thread.new do
  i = (1..50000).inject(&:*)
  i = i/(2**20)
end
t2 = Thread.new do
  j = (1..50000).inject(&:*)
  j = j/(2**20)
end
t1.join
t2.join
'add some random stuff here'
puts i + j
puts "#{Time.now - a}"
# 30 seconds in rubinius, 3 seconds in mri???
