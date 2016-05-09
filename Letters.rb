require 'json'

file = File.open(ARGV[0], "r")
text = file.read
text = text.chomp.split("").sort
letter_num = Hash.new(0)
total_count = text.count.to_f
a = File.open(ARGV[1], "w")

text.each do |letter|
  letter_num[letter] +=1
end
letter_num.each do |key, value|
  a.print "  ", key,"  ", value / total_count
  a.puts

end
file.close
