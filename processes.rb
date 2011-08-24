r, w = IO.pipe
fork do
  r.close # don't use the reader
  5.times do |i|
    w.puts "Hello #{i}"
  end
  w.close
end

w.close # don't use the writer
while s = r.gets
  puts "Read message: "+s
end

