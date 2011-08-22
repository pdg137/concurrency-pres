fiber1 = Fiber.new do
  5.times { |x| puts "fiber 1: #{x}" }
  Fiber.yield
  5.times { |x| puts "fiber 1: #{x}" }
end

fiber2 = Fiber.new do
  5.times { |x| puts "fiber 2: #{x}" }
  Fiber.yield
  5.times { |x| puts "fiber 2: #{x}" }
end


fiber1.resume
fiber1.resume
fiber2.resume
fiber2.resume
