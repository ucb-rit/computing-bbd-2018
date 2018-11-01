if(!require(sparklyr)) {
    install.packages("sparklyr")
    # spark_install() ## if spark not already installed
}

### connect to Spark ###

## need to increase memory otherwise get hard-to-interpret Java
## errors due to running out of memory; total memory on the node is 64 GB
conf <- spark_config()
conf$spark.driver.memory <- "8G"
conf$spark.executor.memory <- "50G"

# sc <- spark_connect(master = "local")  # if doing on laptop
sc <- spark_connect(master = Sys.getenv("SPARK_URL"),
                    config = conf)  # non-local

### read data in ###

cols <- c(date = 'numeric', hour = 'numeric', lang = 'character',
          site = 'character', hits = 'numeric', size = 'numeric')
          

## takes a while even with only 1.4 GB (zipped) input data (100 sec.)
wiki <- spark_read_csv(sc, "wikistats",
                       "/global/scratch/paciorek/wikistats_small/dated",
                       header = FALSE, delimiter = ' ',
                       columns = cols, infer_schema = FALSE)

head(wiki)
class(wiki)
dim(wiki)   # not all operations work on a spark dataframe

### some dplyr operations on the Spark dataset ### 

library(dplyr)

wiki_en <- wiki %>% filter(lang == "en")
head(wiki_en)

table <- wiki %>% group_by(lang) %>% summarize(count = n()) %>%
    arrange(desc(count))
## note the lazy evaluation: need to look at table to get computation to run
table
dim(table)
class(table)

### SQL queries ###

library(DBI)
## reference the Spark table (see spark_read_csv arguments)
## not the R tbl_spark interface object
obama <- dbGetQuery(sc,
            "SELECT date, hour, lang, sum(hits) as n FROM wikistats WHERE site like 'Barack_Obama' group by date, hour, lang")
class(obama)
head(obama)
obama %>% dplyr::filter(lang == 'en')
