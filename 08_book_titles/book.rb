#!/usr/bin/env ruby

class Book
    attr_reader :title
    def title=(input)
        output = ''
        small_words = ['a', 'an', 'the', 'at', 'by', 'for', 'in', 'of', 'on', 'to', 'up', 'and', 'as', 'but', 'or', 'nor', 'over']
        counter = 0
        input.split.each do |title_word|
            if counter == 0
                output = output + title_word.capitalize + ' '
                counter = 1
            elsif small_words.include?(title_word)
                output = output + title_word + ' '
            else
                output = output + title_word.capitalize + ' '
            end
        end
        @title = output.strip
    end
end
