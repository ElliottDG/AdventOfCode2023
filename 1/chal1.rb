def getNumbers
    s = []
    File.open('input1.txt').each do |line|
        nums = line.scan(/[0-9]/)
        s.push nums.first.to_i * 10 + nums.last.to_i
    end    
    return s
end

def getNumbers2
    s = []
    numbers = ['one','two','three','four','five','six','seven','eight','nine']
    File.open('input1.txt').each do |line|
        nums = line.scan(/[one|two|three|four|five|six|seven|eight|nine]/)
        s.push (numbers.find_index(nums.first).to_i + 1 * 10) + (numbers.find_index(nums.last).to_+1)
    end    
    return s
end

# pt1
puts getNumbers.sum

# pt2
puts getNumbers2.sum

