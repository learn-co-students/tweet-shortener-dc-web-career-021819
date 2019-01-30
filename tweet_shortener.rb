# Write your code here.
#"hello" becomes 'hi'
#"to, two, too" become '2' 
#"for, four" become '4'
#'be' becomes 'b'
#'you' becomes 'u'
#"at" becomes "@" 
#"and" becomes "&"

def dictionary (word)
   
    d = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for"  => "4", "For" => "4", "four"  => "4", "be" => "b", "you"  =>  "u",  "at" => "@", "and" => "&"}
 
    d.each do |k, v|
        if word == k
            return v
        end
    end
    word
    

end

def word_substituter (tweet)
    counter = 0
    words = []
    
    last = 0

    while counter < tweet.size
        if tweet[counter] == " "
           words.push (tweet[last...counter])
         
            last = counter + 1
        end
        if counter == tweet.size-1
           words.push (tweet[last..counter])
         
            
        end
        counter += 1
    end
  ret = ""
    words.each do |e|
        r = dictionary (e)
        
        ret+= r
        if (e != words[-1])
            ret += " "
        end
    end
    ret
end

def bulk_tweet_shortener (tweets)
    tweets.each do |tw|
        tw = word_substituter(tw)
        puts tw
    end
   
end

def selective_tweet_shortener (tweet)

   if tweet.size > 140
        tweet = word_substituter(tweet)
   end
   tweet

end

def shortened_tweet_truncator (tweet)
    tweet = selective_tweet_shortener (tweet)

    if tweet.size > 140
        tweet = tweet[0...140]
    end
    tweet 
end
