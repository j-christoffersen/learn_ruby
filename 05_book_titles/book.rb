class Book
    attr_accessor :title
    
    
    #These can be filled with more words if necessary
    @@always_lower = ['a', 'an', 'the', 'and', 'in', 'of']
    
    def titleize s
        s = s.split.map.with_index do |word, i|
            if (i == 0) || !(@@always_lower.include? word)
                word.capitalize
            else
                word
            end
        end
        
        s[s.length-1].capitalize!
        
        return s.join(' ')
    end
    
    def title=(s)
        @title = titleize s
    end
end

book = Book.new
book.title = 'stuart little'
puts book.title
