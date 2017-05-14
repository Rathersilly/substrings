 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, substring_array)
    word_count = Hash.new(0)

    #this is a bit nuch; include? will ignore punctuation
    string = string.downcase.gsub(/[^a-z0-9\s]/i, '').split
  
    substring_array.each do |substring|
      string.each do |word|
        word_count[substring] += 1 if word.include?(substring)
      end
    end 

    puts word_count

end

def substrings_condensed(string, substring_array)
  word_count = Hash.new(0)

  string = string.downcase.split

  #eww
  substring_array.each {|substring| string.each {|word| word_count[substring] += 1 if word.include?(substring)}}

  puts word_count
end
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

substrings_condensed("Howdy partner, sit down! How's it going?", dictionary)