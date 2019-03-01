def dictionary
{
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter tweet
  words = tweet.split(" ")
  words.map {|word|
    dictionary.include? word
      ? dictionary[word]
      : word
  }
end
