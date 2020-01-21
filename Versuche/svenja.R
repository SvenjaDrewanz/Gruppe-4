table(total$Windgeschwindigkeit)
total <- total %>% mutate(Windgeschwindigkeit = as.integer(total$Windgeschwindigkeit))

# Versuche ----------------------------------------------------------------

wetter %<>% 
  mutate(WindFct = cut(Windgeschwindigkeit, 
                       breaks = c(0, 5, 10, 20, 28, max(Windgeschwindigkeit)), 
                       labels = c("leicht bis schwach", "mäßig bis frisch", "stark bis stürmisch", "Sturm", "Orkan"), 
                       include.lowest = T, right = F))
