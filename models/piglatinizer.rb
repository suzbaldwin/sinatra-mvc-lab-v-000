class PigLatinizer


  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "y"]
  new_word = word
  word.each_char do |char|
    if char == "u" && new_word[-1] == "q"
      new_word << "u"
      new_word.slice!(0)
      next
    elsif vowels.include? char
      new_word << "ay"
      break
    else
      new_word << char
      new_word.slice!(0)
      next
    end
  end
  new_word

  end

 end
