# Write your code here.
def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4",
  "be" => "b", "you" => "u", "at" => "@", "and" => "&", "For" => "4"}
end

def word_substituter(tweet)
  words = tweet.split(" ")
  keys = dictionary.keys
  values = dictionary.values
  shortened_tweet = []

  words.each do |word|
    if keys.include?(word)
      keys.each do |key|
        if key == word
          index = keys.index(key)
          shortened_tweet << values[index]
        end
      end
    else
      shortened_tweet << word
    end
  end
  shortened_tweet = shortened_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
  end
end
