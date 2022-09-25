library(priceR)

cur <- historical_exchange_rates("EUR", to = "AUD",
                                 start_date = "2022-01-01", end_date = Sys.Date())
head(cur)
salary_1 <- c("25889","20909","52352","43532","37868","46235")
salary_1 <- as.numeric(salary_1)

length(salary_1)


#Loop of Models
salary <- list()
for (j in 1:length(salary_1)){
  cur2<-cur$one_EUR_equivalent_to_x_AUD*salary_1[j]
  salary[[j]] <- cur2
}

