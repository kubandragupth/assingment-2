
library(robotstxt)
library(rvest)

link<- "https://en.wikipedia.org/wiki/Money_Heist"

path <- paths_allowed(link)
website<- read_html(link)
View(website)

story_of_money_hiest<- website%>% html_node("h3+ ul li") %>% html_text()
View(story_of_money_hiest)

theme_and_analysis<- website%>% html_node("p:nth-child(68) , p:nth-child(67) , p:nth-child(66) , p:nth-child(65)") %>% html_text()
View(theme_and_analysis)

story <- data.frame(story_of_money_hiest)
theme <- data.frame(theme_and_analysis)
View(story)
View(theme)

write.dcf(story,"story.doc")
write.dcf(theme,"theme.doc")
