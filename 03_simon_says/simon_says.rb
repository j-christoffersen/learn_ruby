#write your code here
def echo s
    return s
end

def shout s
    return s.upcase
end

def repeat s, times=2
    return ((s + ' ')*times).chop
end

def start_of_word s, len
    return s[0, len]
end

def first_word s
    return s.split[0]
end

def titleize s
    s = s.split.map.with_index do |word, i|
        if (word.length > 4 || i == 0)
            word.capitalize
        else
            word
        end
    end
    
    s[s.length-1].capitalize!
    
    return s.join(' ')
end

puts titleize 'two word'