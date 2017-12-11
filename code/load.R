install.packages(c("ROAuth", "httr", "twitteR", "plyr"))
## should I use temporary storage for packages, or create a directory for packages so I have them always?

library(twitteR)
library(ROAuth)
library(httr)


# Set API Keys
api_key <- "z50X7kCgvHvHmch1mfbGr7P5i"
api_secret <- "ZhbBovpHqhOmq88b9TkPNv2JmigHIGkfDMZS1UhKKUclKThTK2"
access_token <- "547152273-5hfXTJWGMHmmOsKKyLdO5hVRTWJt0UPmxuhEIz3Z"
access_token_secret <- "yTeLuxusNbmrZpM0Jk7uPHL7AODjREilRNeVJZOt5Vxrt"
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

# Grab latest tweets
tweets_Trump <- searchTwitter('@realDonaldTrump', n=1500)

# Loop over tweets and extract text
library(plyr)
feed_Trump = laply(tweets_Trump, function(t) t$getText())
