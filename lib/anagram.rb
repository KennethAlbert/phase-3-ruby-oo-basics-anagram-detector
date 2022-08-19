# Your code goes here!
require "pry"
class Anagram
 attr_reader :word
 def initialize word
  @word=word
 end

 def match array
 new_word=@word.chars.sort
 filtered=array.filter{|el|el.chars.sort==new_word}
 filtered
 end
  

end

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])

binding.pry