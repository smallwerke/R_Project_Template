## ---- set-plot_vars -------
library(RColorBrewer)
# look at some settings...
#display.brewer.all(colorblindFriendly = TRUE)
#brewer.pal(n=5,name="Dark2")

colors.diag = c("setosa" = RColorBrewer::brewer.pal(n=6, name="Paired")[1], "versicolor" = RColorBrewer::brewer.pal(n=6, name="Paired")[3], 
               "virginica" = RColorBrewer::brewer.pal(n=6, name="Paired")[6] 
              )
colors.stratum = c("changed" = RColorBrewer::brewer.pal(n=4, name="Dark2")[4], "no" = "grey")

shapes.diag = c("setosa" = 17, "versicolor" = 0, "virginica" = 1)
