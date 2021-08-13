class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    words = str.split(" ")
    marklar_str = ""
    for i in 0...words.length
      is_Marklar = words[i].length > 4 && words[i] == words[i].capitalize
      is_marklar = words[i].length > 4
      isLastWord = i == (words.length - 1)
      has_punctuation = words[i].gsub(/[^a-zA-Z]/, '').length != words[i].length
      punctuation = "";
      if has_punctuation
        punctuation = words[i][words[i].length - 1]
      end
      if is_Marklar
        if isLastWord
         marklar_str += "Marklar" + punctuation
        else
         marklar_str += "Marklar" + punctuation + " "
        end
      elsif is_marklar
        if isLastWord
          marklar_str += "marklar" + punctuation
        else
          marklar_str += "marklar" + punctuation + " "
        end
      else 
        if isLastWord
          marklar_str += words[i] + punctuation
        else
          marklar_str += words[i] + punctuation + " "
        end
      end
    end
    return marklar_str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    initArray = [1, 1]
    while initArray.length != nth
      nextNum = initArray[initArray.length - 2] + initArray[initArray.length - 1]
      initArray.push(nextNum)
    end
    sumEven = initArray.select(&:even?).reduce(:+)
    return sumEven
  end

end
