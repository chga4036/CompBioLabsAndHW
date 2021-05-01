#  Your Title

## Biological question
Doese elevated temperature decrease the fitness of endemic frogs at high altitude forested wetlands in northern Pakistan?

## Context (introduction)
People around the world may feel that the climate has been getting steadily warmer and warmer in recent years. Places which used to be abundant in snowfall have frequently experienced snowfree winters. Drought lasts longer in some dry areas. According to NOAA's 2020 Annual Climate Report _(Lindsy and Dahlman, 2021)_, the temperature  of combined land and ocean has increased at an average rate of 0.13 degrees Fahrenheit ( 0.08 degrees Celsius) per decade since 1880; however, after.1981, the average rate of increase (0.18°C / 0.32°F) has been more than twice that rate. There was a concern that the increasing temperature may decrease the biodiversity of ecosystems. Amphibian physiology makes them more vulnerable to increased temperature when compared with other vertebrates _(Saeed et al., 2021)_. In this project, I will evaluate how tadpoles of Hazara Torrent Frog (Allopaa hazarensis) and Murree Hills Frog (Nanorana vicina) responded to different temperatures through sex hormone concentration and survival.


## Methods
### The source of the data:
The data obtained from [The Dryad Data Repository](https://doi.org/10.5061/dryad.rr4xgxd7f) in [_Rise in temperature causes decreased fitness and higher extinction risks in endemic frogs at high altitude forested wetlands in northern Pakistan_](https://doi.org/10.1016/j.jtherbio.2020.102809). 
* Full citation:
  *Saeed, Muhammad., Rais, Muhammad., Gray, Russell. J., Ahmed, Waseem., Akram, Ayesha., Gill, Sumbul., & Fareed, Ghulam. 2021. “Rise in temperature causes decreased fitness and higher extinction risks in endemic frogs at high altitude forested wetlands in northern Pakistan.” Journal of Thermal Biology, 95, 102809. https://doi.org/10.1016/j.jtherbio.2020.102809.
  * Rais, Muhammad; Saeed, Muhammad; Gray, Russell (2021), Rise in temperature causes decreased fitness and higher extinction risks in endemic frogs at high altitude forested wetlands in northern Pakistan, Dryad, Dataset, https://doi.org/10.5061/dryad.rr4xgxd7f
 
 The experient was conducted in Himalayan foothills in the areas of Tehsil Murree, District Rawalpindi, Punjab Province (33.9070◦ N, 73.3943◦ E) and Ayubia National Park (34.0729◦ N, 73.3812◦ E), District Abbotabad, Khyber Pakhtunkhwa Province, Pakistan. The mean maximum temperature of Tehsil Murree is 25 ◦C, and mean annual precipitation is 1789 millimeter (mm); Whereas, in the Ayubia National Park, the mean maximum annual temperature is 19.2 ◦C while mean annual precipitation is 1412 mm(_Saeed et al., 2021_).

The samples were two types of frogs: Hazara Torrent Frog (Allopaa hazarensis) and Murree Hills Frog (Nanorana vicina). In order to carry out for the selection of temperature gradient for the trials, Saeed et al(_2021_) subjected five adult males and females, and twenty larvae (Gosner Stage 25 and 30) of each species for 24 hours at each treatment. Then, a total of 360 adults (n = 180, male = 90, female = 90 for each species) were collected from the wild, to estimated the sex hormone concentrations.

The laboratory trials' frogs were collected from wild, housed in plastic buckets (each withLxWxH,45×35×48cm) at the selected temperatures for 24h at the field station near frog’s habitat. The data ​were collected from February 2018 to October 2019 except during the hibernation period (winter months: November–January). They followed blood extraction protocol which extracted blood from each individule through cardiac puncture using insulin syringe (30 gauge, 1 mL/cc).  The blood centrifuge was used to separate the plasma by 3000 rotations per minute (rpm) for 30 minute, and enzyme linked immunosorbent assay (ELISA) was performed following the kit protocol at Poultry Research Institute Punjab, Rawalpindi Pakistan (Fish Estradiol (E2) ELISA kit, Catalogue No. SL0033FI; Fish Testosterone ELISA kit, Cata- logue No. SL0032FI)(Saeed et al, 2021)

The tadpoles of A. hazarensis and N. vicina were collected from the stream by using dip nets, which also housed in buckets. Prior to use, they were disinfected with 10% ethanol and washed with tap water, filled with water from the streams and transported to _the Herpetology Lab, Department of Wildlife Management (WLM), Arid Agriculture University Rawalpindi, Pakistan (PMAS-AAUR)_. There were a total of 1000 larvae (n = 500) of each species were subjected to the trials, only tadpoles at Gosner stage 25 were subjected to trials. They were divided into five batches of (100 individuals per batch, 25 tadpoles per replication) for each species. They recorded development stages (GS 25-46), mortality and other relative data once a week. The trials was finished in 21 and 24 weeks for the tadpoles of A. hazarensis and N. vicina, respectively(Saeed et al, 2021). 

### What the original authors did with the data:`
In [_Rise in temperature causes decreased fitness and higher extinction risks in endemic frogs at high altitude forested wetlands in northern Pakistan_](https://doi.org/10.1016/j.jtherbio.2020.102809), Saeed et al.(2021) used data of estradiol and testosterone (pg/ ml) responses of Nanorana vicina create two groups of boxplots in order to compare hormone level from the treated group with controlled temperatures(18, 20, 22, 24, 26, 28, 30 and 32 ◦C), or the wild group with seasonal temperature over two-month periods. The data about mortality and other growth and development data data were analyze by scatterplots and Pear- son’s correlation coefficient. Their figures were generated using the ggplot (Wick- ham, 2006) and ggpubr package, all of analyses were performed in R statistical software version 3.6.3.
 

### What YOU did with the data and how you did it:
In order to evaluate if elevated temperature decrease the fitness of endemic frogs at high altitude forested wetlands in northern Pakistan, I used data of mortality and hoermone concentration for both species. Like Saeed et al.(2021), I also made boxplots for Hormone vs  Months graphs and scatterplts for Mortality vs Teperature graphs in R. The difference is the steps to create the graphs. Not like Saeed et al.(2021), I created graphs by using boxplot() and plot() packages. And the steps are simlar for all of graphs. In summary, all of graphs need typical three steps.
* Import the dataset
* Melt and/or dataframe for plotting
* Creat the plots by boxplot() or plot() packages
  * Add trend line 
  

## Results and conclusions
![Nanorana vicina Estradiol][NV Estradiol]
![Nanorana vicinaTestosterone][NV Testosterone]
![Allopaa hazarensis Estradiol][AH Estradiol]
![Allopaa hazarensis Testosterone][AH Testosterone]
Acoording to all four graphs of hormone concentration vs months in both Nanorana vicina and Allopaa hazarensis, there is a increasing tndency of hormone level as the increase of temperature (p < 0.05) for both estradiol and testosterone.

![Nanorana vicina Mortality][NV Mortality]
![Allopaa hazarensis  Mortality][AH Mortality]
Acording to the MOrtality scatterplots for both Nanorana vicina and Allopaa hazarensis, there is a significant relationship between mortality of frogs and temperature. For the first graph-mortality vs Tempereature for Nanorana Vicina, I got p-value of 2.71e-10, which is much smaller than 0.05.The intercept is -1.169792. This indicate that there is a significant negative relationship between mortality and temperature. 

In conclusion, since fitness is relative to the maximum survival and reproductive rate of other genotypes in the population. As the increase of temperature, the hormone leve and mortality of frogs both increase, therefor, there is a probailty that elevated temperature decrease the fitness of endemic frogs at high altitude forested wetlands in northern Pakistan


## References Cited
* Lindsey, Rebecca, and Dahlman LuAnn. 2021. “Climate Change: Global Temperature.” _Climate_, March 15, 2021. https://www.climate.gov/news-features/understanding-climate/climate-change-global-temperature#:~:text=Change%20over%20time&text=According%20to%20NOAA's%202020%20Annual,more%20than%20twice%20that%20rate.


* Saeed, Muhammad., Rais, Muhammad., Gray, Russell. J., Ahmed, Waseem., Akram, Ayesha., Gill, Sumbul., & Fareed, Ghulam. 2021. “Rise in temperature causes decreased fitness and higher extinction risks in endemic frogs at high altitude forested wetlands in northern Pakistan.” Journal of Thermal Biology, 95, 102809. https://doi.org/10.1016/j.jtherbio.2020.102809.



* [NV Estradiol]: http://127.0.0.1:29657/graphics/7ff5baa0-35e7-49f3-ad71-bc4346456ddf.png

* [NV Testosterone]: http://127.0.0.1:29657/graphics/769b17a1-b164-40a2-8aee-0d4a5c1efff2.png

* [AH Estradiol]:http://127.0.0.1:29657/graphics/fcc6dcae-2820-4ee6-a294-123e58d798fd.png

* [AH Testosterone]:http://127.0.0.1:29657/graphics/f5816817-2b5d-4077-9931-00353ec67adb.png

* [NV Mortality]: http://127.0.0.1:29657/graphics/1b32747c-b531-41db-a30f-1b3b6f7a9f55.png
* [AH Mortality]: http://127.0.0.1:29657/graphics/1b32747c-b531-41db-a30f-1b3b6f7a9f55.png
