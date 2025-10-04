//tweet_id is our primary key and we need to find the invalid tweet which have length more than 15

SELECT tweet_id
FROM 
Tweets
WHERE LENGTH(content) > 15