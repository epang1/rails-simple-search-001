  class Search

    def self.for(keyword)
      matches = []
      Word.all.each do |word|
        if word.name.include?(keyword)
          matches << word
        end
      end
      matches
    end
    
  end