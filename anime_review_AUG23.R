library(rvest)
library(dplyr)

require(rvest)
#install.packages("writexl")
library("writexl")

#link="https://myanimelist.net/reviews.php?t=anime"
anime_review=data.frame()
for(page_result in seq(from =1,to=15,by=1)){
  link=paste0("https://myanimelist.net/reviews.php?t=anime&p=",page_result)
  page=read_html(link)
  
  anime_name=page %>% html_nodes(".hoverinfo_trigger") %>% html_text()
  user_id=page %>% html_nodes("td > a") %>% html_text()
  overall_rating=page %>% html_nodes(".mb8 .spaceit+ div") %>% html_text()
  review_date=page %>% html_nodes(".mb8 div:nth-child(1)") %>% html_text()
  
  anime_review=rbind(anime_review,data.frame(anime_name,user_id,overall_rating,review_date))
}

View(anime_review)

write_xlsx(anime_review,"V:/vit/sem5/rvest/19BDS0083_anime_review_AUG18_28.xlsx")
write.csv(anime_review,"V:/vit/sem5/rvest/19BDS0083_anime_review_AUG18_28.csv")
