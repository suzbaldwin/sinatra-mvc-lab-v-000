class PigLatinizer
  VOWELS = /a|e|i|o|u/i

  def piglatinize(word)


    words = word.split(' ')
	word = word.split('')
	trans = []
	x = word.dup


	if words.size > 1
		words.map do |phrase|
			phrase.split('').map do |letter|
				break if %w(a e i o u).include?(letter)
				trans << letter
				if phrase.first != letter
					x.shift
				end
				puts
				print "this is trans: #{trans}"
			end
		end
		x.join + trans.join + "ay"

	else
		word.map do |letter|
			break if %w(a e i o u).include?(letter)
			trans << letter
			x.shift
		end
		x.join + trans.join + "ay"
	end

end

 end
