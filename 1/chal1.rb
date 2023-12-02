def getNumbers
    s = []
    File.open('input1.txt').each do |line|
        nums = line.scan(/[0-9]/)
        s.push nums.first.to_i * 10 + nums.last.to_i
    end    
    return s
end

puts getNumbers.sum

