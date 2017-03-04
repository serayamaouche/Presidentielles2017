extract.hashtags = function(vectorTweets)
 {
  hash.pattern = "#[[:alpha:]]+"
  have.hash = grep(x = vectorTweets, pattern = hash.pattern)
  hash.matches = gregexpr(pattern = hash.pattern,
                          text = vectorTweets[have.hash])
  extract.hashtags = regmatches(x = vectorTweets[have.hash], m = hash.matches)
  df = data.frame(table(tolower(unlist(extract.hashtags))))
  colnames(df) = c("tag","frequency")
  df = df[order(df$frequency,decreasing = TRUE),]
  return(df)
 }
