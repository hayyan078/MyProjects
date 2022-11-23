puts "Please enter your text: "
text = gets.chomp
# prompting user for input and saving it into a variable called 'text'
words = text.split(" ")
# tranforms the user's input into an array using the .split method. It takes in a string and outputs an array
# .split divides the user's inputs into individual words
frequencies = Hash.new(0)
# storing a new hash into a frequencies variable with a default value of 0
# the default value is outputted if an unknown key is used, otherwise it's empty.
# it's defaulted at 0 as a new word will have the default value, then will increase by 1 if it is found again
words.each { |word| frequencies[word] +=1 }
# iterating over 'words' using the .each loop to put each word of the user's input into the 'frequencies' hash and increment by 1 if it is used again
frequencies = frequencies.sort_by { |texts, count| count }
# updating the frequencies variable to a sorted version and returns an array of values
frequencies.reverse!
frequencies.each do |the_text, frequency|
  puts the_text + " " + frequency.to_s
# iterating over the array to display every word in the array
# the output is the word along with a space to separate the number (changed to a string in order to output it)
end
