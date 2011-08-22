require 'digest/sha1'

class HardProblem
  def self.solve(x)
    i=0
    loop do
      key = "#{i}#{x}"
      hash = Digest::SHA1.hexdigest(key)
      if hash[0,4] == "0000"
        return [key,hash]
      end
      i += 1
    end
  end

  def self.test10
    10.times do |i|
      puts HardProblem.solve(i).inspect
    end
  end
end

