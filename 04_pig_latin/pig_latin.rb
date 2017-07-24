#write your code here

def translate s
    s = s.split.collect do |word|
        if /[aeiou]/.match word[0]
            word+'ay'
        elsif (/[aeiou]/.match word[1]) && !(/qu/.match word[0,2])
            word[1, word.length-1] + word[0] + 'ay'
        elsif (/[aeiou]/.match word[2]) && !(/qu/.match word[1,2])
            word[2, word.length-2] + word[0, 2] + 'ay'
        else
            word[3, word.length-3] + word[0, 3] + 'ay'
        end
    end
    return s.join(' ')
end

puts translate 'die pie lie'