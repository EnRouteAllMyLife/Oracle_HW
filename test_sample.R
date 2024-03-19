library(treemap)
data(GNI2014, package = "treemap")
subset(GNI2014, subset = grepl(x = country, pattern = 'China'))
treemap(GNI2014,
        index = c("continent", "iso3"),
        vSize = "population", 
        vColor = "GNI",
        type = "value",
        format.legend = list(scientific = FALSE, big.mark = " ")
)

treemap(df |> filter(DBDX == 1),
        index = c("DBDX","DBTYPE","DBRX"),
        vSize = "RUHP6Q", 
        vColor = "RUHP6Q", 
        type = "value",
        format.legend = list(scientific = FALSE, big.mark = " ")
)


writexl::write_xlsx(df,"./Data/rawdata_0316.xlsx")   
devtools::install_github("yogevherz/plotme")

library(plotme)
library(dplyr)
library(palmerpenguins)
View(penguins)
penguins %>% 
  count() %>% 
  count_to_sunburst()
df |>
  count(DBDX, DBTYPE, DBIN, DBRX#,wt = RUHP6Q
        ) |>
  count_to_sunburst(fill_by_n = TRUE)


boxplot(Ozone ~ Month, data = airquality)
wilcox.test(Ozone ~ Month, data = airquality,
            subset = Month %in% c(5, 8))

