#!/usr/bin/env ruby
def echo(input)
    return input
end

def shout(input)
    return input.upcase
end

def repeat(input, x=2)
    return ((input + " ") * x).strip
end

def start_of_word(input, x)
    return input[0..x-1]
end

def first_word(input)
    return input.split[0]
end

def titleize(input)
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
    return output.strip
end
