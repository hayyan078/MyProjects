puts "Please enter your text: "
text = gets.chomp
# prompting user for input and saving it into a variable called 'text'
words = text.split(" ")
# tranforms the user's input into an array using the .split method. It takes in a string and outputs an array
# .split divides the user's inputs into individual words
frequencies = Hash.new(0)
# storing a new hash into a frequencies variable with a default value of 0
# the default value is outputted if an unkown key is used, otherwise it's empty
words.each { |word| frequencies[word] +=1 }
# 
frequencies = frequencies.sort_by { |texts, count| count }
frequencies.reverse!

frequencies.each do |the_text, frequency|
  puts the_text + " " + frequency.to_s
end
