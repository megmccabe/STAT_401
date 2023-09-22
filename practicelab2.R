data <- data.frame(category = c("A", "B", "A", "B", "A"),
                   value = c(10, 20, 15, 25, 30))

summary_data <- data %>%
  group_by(category) %>%
  summarise(mean_value = mean(value),
            median_value = median(value))


my_CIACountries <- CIACountries %>% 
  mutate(high_educ = educ > 4.5) %>% 
  group_by(high_educ) %>% 
  summarise(mn_area = mean(area))

my_CIACountries

CIACountries %>% 
  select(country, pop, gdp)


my_CIACountries <- CIACountries %>% 
  mutate(high_educ = educ > 4.5) %>% 
  group_by(high_educ) %>% 
  summarise(mn_area = mean(area))

my_CIACountries

select(CIACountries, country, pop, gdp)

CIACountries %>% 
  select(country, pop, gdp)

filter(CIACountries, pop > 1000000000)

CIACountries %>% 
  filter(pop > 1e9)

CIACountries %>% 
select(country, pop, gdp) %>% 
  filter(pop > 1e9)

my_CIACountries <- mutate(CIACountries, dens = pop/area)
my_CIACountries[1,]


my_CIACountries <- CIACountries %>% 
  mutate(high_educ = educ > 4.5) %>% 
  group_by(high_educ) %>% 
  summarise(mn_area = mean(area))

my_CIACountries

my_CIACountries <- CIACountries %>% 
  mutate (highgdp = gdp > 10000) %>%
  group_by(highgdp) %>% 
  summarise (meanroadways = mean(roadways))

my_CIACountries

my_CIACountries <- CIACountries %>% 
  mutate(dens = pop/area)
my_CIACountries[1,]

data <- data.frame(category = c("A", "B", "A", "B", "A"),
                   age = c(25, 30, 35, 40, 45))

data %>%
  arrange(desc(age))

data %>%
  count(category)

data %>%
  count(category) %>%
  arrange(n)

data %>%
  count(category) %>%
  arrange(desc(n))


#Defaults to ascending
CIACountries %>% 
  arrange(gdp) %>% 
  head(5)
#Sort descending
CIACountries %>% 
  arrange(desc(gdp)) %>% 
  head(5)


CIACountries %>% 
  select(country, pop, gdp) %>% 
  filter(pop > 1e9)


CIACountries %>% 
  select (country, oil_prod, roadways) %>% 
  filter(oil_prod > 0)


bcountries <- select(filter(CIACountries, country %in% c("Bahrain", "Bangladesh")), starts_with("bah"))

bcountries <- filter(CIACountries, country %in% c("Bahrain", "Bangladesh"))


my_CIACountries <- CIACountries %>% 
  mutate(high_educ = educ <= 4.5) %>% 
  group_by(high_educ) %>% 
  summarise(mn_area = mean(area))

my_CIACountries


data <- data.frame(category = c("A", "B", "A", "B", "A"),
                   value = c(10, 20, 15, 25, 30))

summary_data <- data %>%
  group_by(category) %>%
  summarise(mean_value = mean(value),
            median_value = median(value))

summary_data

m_CIACountries <- CIACountries %>% 
  mutate(gdpvalue = case_when( 
    gdp > 10000 ~ "highgdp", 
    gdp < 10000 ~ "lowgdp"
  )) %>% 
  group_by(gdpvalue) %>% 
  summarise(mn_roadways = mean(roadways))

m_CIACountries
