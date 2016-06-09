#!/usr/bin/env ruby
$vowels = ['a','e','i','o','u']
$capitals = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
$punctuation = ['!', '?', "'", '"', ';', ':', ',', '.']

def pigize_word(word)
    if word[0..1] == 'qu'
        pigize_word(word[2..word.length] + word[0..1])
    elsif word[0..2] == 'sch'
        pigize_word(word[3..word.length] + word[0..2])
    elsif $vowels.include?(word[0]) or word.length == 1
        return word + 'ay'
    else
        pigize_word(word[1..word.length] + word[0])
    end
end

def translate(phrase)
    pigized = ''
    temp_word = ''
    punctuation = ''
    phrase.split.each do |word|
        if $punctuation.include?(word[word.length - 1])
            punctuation = word[word.length - 1]
            word = word[0..word.length - 2]
        end
        temp_word = pigize_word(word)
        if $capitals.include?(word[0])
            temp_word.capitalize!
        end
        pigized += temp_word + punctuation + ' '
        punctuation = ''
    end
    return pigized.strip
end
