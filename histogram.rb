puts "Please enter your text: "
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)
words.each { |word| frequencies[word] +=1 }

frequencies = frequencies.sort_by { |texts, count| count }
frequencies.reverse!

frequencies.each do |the_text, frequency|
  puts the_text + " " + frequency.to_s
end
