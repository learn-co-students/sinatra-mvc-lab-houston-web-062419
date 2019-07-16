class PigLatinizer
	attr_accessor :text


	def initialize()
		
	end

	def piglatinize_word(word)
		flag = true

		return word + "way" if "aeouiAEOUI".include?(word[0]) 
		return word + "ay" if word.scan(/[aeouiAEOUI]/).count == 0

		#flag = false if word == word.downcase 
		#word.downcase!

		while true
			break if "aeoui".include?(word[0])
			word = word.slice(1, word.length - 1) + word[0] 
		end
		#return word = (flag ? (word.capitalize) : (word)) +  "ay"
		return word = word +  "ay"

	end

	def piglatinize(text)
		@text = text
		text = @text.split
		text.map! {|w| piglatinize_word(w)}
		text.join(" ")
	end

end

puts PigLatinizer.new.piglatinize("He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish")