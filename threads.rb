a = Thread.new do
  10.times { |x| puts "thread a: #{x}" }
end

b = Thread.new do
  10.times { |x| puts "thread b: #{x}" }
end

a.join
b.join
