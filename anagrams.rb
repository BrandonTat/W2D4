def first_anagram?(word1, word2)
  perms = word1.chars.permutation(word1.length)
  words = perms.map {|word| word.join("")}
  words.include?(word2)
end

def second_anagram?(str1, str2)
  arr2 = str2.chars
  arr1 = str1.chars

  arr1.each_with_index do |char, i|
    arr2.each_with_index do |char2, j|
      arr2.delete_at(j) if char == char2
    end
  end

  arr2.empty?
end

def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1, str2)
  letters1 = Hash.new(0)
  letters2 = Hash.new(0)
  str1.chars.each do |char|
    letters1[char] += 1
  end

  str2.chars.each do |char|
    letters2[char] += 1
  end
  letters1 == letters2
end

def bonus_anagram?(str1, str2)
  letters1 = Hash.new(0)
  str1.chars.each do |char|
    letters1[char] += 1
  end
  letters1.all? {|k, v| str2.count(k) == v }
end
