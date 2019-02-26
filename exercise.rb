class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
	result = str
	#NOTE(): Get each word in the string
	words = str.split(" ")

	words.each do |word|
		
		if word.length > 4 then
			newWord = word
			#NOTE() Remove non alpanumberic
			newWord = newWord.sub(/[^a-zA-z1-9 ]/,'')

			#NOTE(): Get the first letter of the word
			cap = newWord[0,1]

			if cap == cap.capitalize then
				result = result.sub(newWord,"Marklar")
			else
				result = result.sub(newWord,"marklar")
			end
		end

	end

	return result
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10

  #NOTE() Recursive fibonacci
  def self.fibonacci(nth)
	if  nth <= 1  then 
		return nth
	end
	result = fibonacci(nth-1)  + fibonacci(nth-2)

	return  result
  end

  def self.even_fibonacci(nth)
	result = 0

	for i in 1..nth
		num =  fibonacci(i)

		if num % 2 == 0
			result += num
		end
	end

	return result
  end

end
