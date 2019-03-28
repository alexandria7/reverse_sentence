# A method to reverse the words in a sentence, in place.
# Time complexity: O(n + n) = O(2n) = O(n) where n is the length of the sentence
# Space complexity: O(1)

def reverse_words(my_sentence)
  return false if my_sentence == nil

  i = 0
  start_of_word = 0
  end_of_word = 0
  temp = 0

  while i < my_sentence.length
    while i < my_sentence.length && my_sentence[i] == " "
      i += 1
    end

    start_of_word = i

    while i < my_sentence.length && my_sentence[i] != " "
      i += 1
    end

    end_of_word = i - 1

    while start_of_word < end_of_word
      temp = my_sentence[start_of_word]
      my_sentence[start_of_word] = my_sentence[end_of_word]
      my_sentence[end_of_word] = temp
      start_of_word += 1
      end_of_word -= 1
    end
  end

  return my_sentence
end

def string_reverse(my_sentence)
  if my_sentence != nil
    i = 0
    last = my_sentence.length - 1
    temp = 0

    while i < last
      temp = my_sentence[i]
      my_sentence[i] = my_sentence[last]
      my_sentence[last] = temp
      i += 1
      last -= 1
    end
  end
  return my_sentence
end

def reverse_sentence(my_sentence)
  unless my_sentence == nil
    temp_sentence = string_reverse(my_sentence)
    my_sentence = reverse_words(temp_sentence)
  end
  return my_sentence
end
