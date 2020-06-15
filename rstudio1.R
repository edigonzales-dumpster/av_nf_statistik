#venezuela.data <- read.csv(file="/Users/stefan/sources/av_nf_statistik/grundstuecksmutation.csv")
#view(venezuela.data)
#library(ggplot2)
p1 <- ggplot() + geom_line(aes(y = wasseramt, x = jahr), data = venezuela.data)
p1
