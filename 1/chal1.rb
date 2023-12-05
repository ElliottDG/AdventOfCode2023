def getNumbers
    s = []
    File.open('input1.txt').each do |line|
        nums = line.scan(/[0-9]/)
        s.push nums.first.to_i * 10 + nums.last.to_i
    end    
    return s
end

NUMS = {
"1" => "1",
  "2" => "2",
  "3" => "3",
  "4" => "4",
  "5" => "5",
  "6" => "6",
  "7" => "7",
  "8" => "8",
  "9" => "9",
  "one" => "1",
  "two" => "2",
  "three" => "3",
  "four" => "4",
  "five" => "5",
  "six" => "6",
  "seven" => "7",
  "eight" => "8",
  "nine" => "9",
}

def getNumbers2
    s = []
    numbers = ['one','two','three','four','five','six','seven','eight','nine']
    File.open('input1.txt').each.map do |line|
        nums = line.scan(/(?=(\d|one|two|three|four|five|six|seven|eight|nine))/)
        (NUMS[nums.first[0]] + NUMS[nums.last[0]]).to_i
    end
end

# pt1
puts getNumbers.sum

# pt2
puts getNumbers2.sum
