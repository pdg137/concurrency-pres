require_relative 'hard_problem'
require 'net/http'

a = Thread.new do
  HardProblem.test10
end

b = Thread.new do
  10.times do
    http = Net::HTTP.new("www.google.com")
    http.get("/")
  end
end

a.join
b.join

