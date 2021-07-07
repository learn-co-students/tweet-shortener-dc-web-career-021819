# Write your code here.
  
  
def dictionary
  dictionary = {
  "hello" =>"hi",
  "to" => '2', 
  "two" => '2', 
  "too" => '2',
  'for' => '4', 
  'four' => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }
end 

def word_substituter(tweet)
  #tweet is a string that we split(convert) into an array then join(revert) into a string again
  tweet.split().map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
  else
    tweet 
  end 
end

def shortened_tweet_truncator (tweet)
    if word_substituter(tweet).length > 140 
      word_substituter(tweet)[0..136] + "..."
    else
      tweet
    end 
end
