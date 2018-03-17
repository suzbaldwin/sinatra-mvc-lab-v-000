class PigLatinizer
  VOWELS = /a|e|i|o|u/i

  def piglatinize(word)


     if word =~ VOWELS
       self + 'yay'
     else
       pieces = self.split(VOWELS)
       first_consonant = pieces.first
       self[first_consonant.length..-1] + first_consonant + 'ay'
     end
   end



 end
