
def first_anagram?(string, anagram)

  string.split('').permutation.include?(anagram.split(''))
end


def second_anagram?(string, anagram)
  ana = anagram.split('')

   string.chars do |char|
    ana.delete_at(ana.index(char)) if ana.include?(char)
   end

   ana.empty?
end


def third_anagram?(string, other_string)
  string.chars.sort == other_string.chars.sort
end


def fourth_anagram?(string, other_string)
  hash1, hash2 = {}, {}

  string.chars do |char|
    hash1[char].nil? ? hash1[char] = 1 : hash1[char] += 1
  end

  other_string.chars do |char|
    hash2[char].nil? ? hash2[char] = 1 : hash2[char] += 1
  end

  hash1 == hash2
end


def bonus_anagram?(string, other_string)
  hash = {}

  string.chars do |char|
    hash[char].nil? ? hash[char] = 1 : hash[char] += 1
  end

  other_string.chars do |char|
    hash["#{char}2"].nil? ? hash["#{char}2"] = 1 : hash["#{char}2"] += 1
  end

  hash.all? { |k, v| hash["#{k}2"] = hash[k] }
end
