library(tidyverse)
library(tseries)

df <- read.csv("./data/forecast-competition-training.csv") %>% tibble %>% mutate(id=row_number())
        

## DATA PROCESSING

# Take first difference

### DATA EXPLORATION

ggplot(df) + geom_line(aes(y=TARGET, x=id)) + theme_bw() # Plot target distribution

gdf = ggplot_df(df)
