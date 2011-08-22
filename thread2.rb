require 'net/http'
require_relative 'hard_problem'

t1 = Time.now

thread = Thread.new do
  10.times do |i|
    #HardProblem.solve(i)
    Net::HTTP.new("www.rubygems.org").get("/")
  end
end

ruby_ms = 0
while thread.alive?
  sleep 0.01
  ruby_ms += 10
end

t2 = Time.now

elapsed_ms = ((t2-t1)*1000).to_i

puts "Elapsed time:        #{"%5d"%elapsed_ms} ms"
puts "Available ruby time: #{"%5d"%ruby_ms} ms"
