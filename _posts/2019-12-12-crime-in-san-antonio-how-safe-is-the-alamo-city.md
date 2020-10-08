---
layout: post
title: "Crime In San Antonio: How Safe Is The Alamo City?"
date: 2019-12-12
featured-image: assets/images/sananto.jpg
featured-alt-txt: "A night shot of the San Antonio, Texas skyline"
categories: Data Analysis
photo-credit: "Jonathan Cutrer"
photo-credit-link: "https://jcutrer.com/photos"
comments: true
---

**Content Warning and Disclaimer**: _Before continuing, it should be noted that the data used in this post deals with violent crime, including that of a sexual nature. Although rape, aggravated assault, homicide and violent robbery are not the focus of this post, I have made conscious efforts to treat these subjects with as much care and objectivity as any thoughtful journalist would._

Home of rich traditions, an enviable hospitality economy and an impressive infrastructure, San Antonio currently stands as one of the [fastest growing cities](https://www.census.gov/newsroom/press-releases/2019/subcounty-population-estimates.html)
in America. The city now numbers nearly [1.5 million](https://www.census.gov/quickfacts/sanantoniocitytexas), and with a bigger population comes bigger crime. Still, as a former resident of SA, I recall the city feeling quite safe. According to the numbers, San Antonio crime poses minimal threat to its residents, at least when it comes to violent crime. Every year, the city’s police department publishes its [Uniform Crime Report data](https://www.sanantonio.gov/SAPD/Uniform-Crime-Reports), compiled by the FBI, using data collected by individual law enforcement agencies. The data reveals that in general, despite increases in some areas of violent crime, San Antonians face considerably lower odds of being affected by violent crime, when compared to crimes involving personal property.

<div class="text-center">
  <img src="/blog/assets/images/crime-in-sa/atglance.png" class="img-fluid" alt="Crime in San Antonio at a glance">
</div>
<br>

Despite San Antonio’s relative safety, the Uniform Crime Report shows an increase in a couple of violent offenses, namely aggravated assault and rape. Aggravated assault currently holds the position of the highest incidence violent offense in the Alamo City. As for offenses related to sexual assault, the data appears to be making a clear statement, but these numbers could be produced by numerous factors, including a recent change in the [FBI’s definition](https://www.nbcboston.com/news/national-international/fbi-report-shows-almost-20-percent-increase-in-rape-reports/1949679/) of rape. The change creates an unsatisfactory analysis; has the issue gotten worse, or has reporting gotten better? For the moment, some analysts are choosing to exclude the issue, but ultimately, turning a blind eye to a vexing statistic could delay necessary investigation.

<div class="text-center">
  <img src="/blog/assets/images/crime-in-sa/csfixed.png" class="img-fluid" alt="Scatter plot displaying trends in aggravated assault and rape">
</div>
<br>

The prevalence of reported rape remains an understandably disconcerting statistic for San Antonio. Since the FBI’s redefinition of the crime in 2013, reported incidents have been slowly climbing. This should pose a significant concern; the latest complete data (2018) has become comparable to more densely populated cities like Chicago, New York and Los Angeles. Rates in these large cities, however, still present a lower figure than what’s observed at the National level. As for aggravated assault, the reports surpassed the national level, but were still lower than Houston, measuring at 5 incident reports per 1000 people.
<div class="d-flex justify-content-center">
  <figure>
    <img src="/blog/assets/images/crime-in-sa/rbc-left.png" class="img-fluid" alt="Bar chart displaying reported rape">
  </figure>
  <figure>
    <img src="/blog/assets/images/crime-in-sa/aabc-right.png" class="img-fluid" alt="Bar chart displaying aggravated assault reports">
  </figure>
</div>
<br>

### February: The Safest Month of The Year?
Despite the admittedly scary upward trend in violent crime statistics, less than 1% of San Antonians were the targets of violent offenders in 2018. The odds may be even lower if you visit San Antonio during February in any given year, and this probability extends to property crime as well. For reasons that remain mostly unexplained, average monthly crime dips down to its lowest point during the second month of the year.

<div class="text-center">
  <img src="/blog/assets/images/crime-in-sa/febdrop.png" class="img-fluid" alt="Plot displaying a yearly recurrence in lower february crime rates">
</div>
<br>

What could account for the seasonal drop in overall crime? One suspect is the [winter cold](https://www.nbcnews.com/news/us-news/does-cold-stop-crime-it-seems-so-n309856), which some believe may account for the dip in offenses. People tend to go out less, criminals included. Even in the cold however, crimes in San Antonio seem to be concentrated towards those involving property, especially vehicle theft, some believing this to be due to people leaving their [vehicles running](https://www.nbcnews.com/news/us-news/does-cold-stop-crime-it-seems-so-n309856) to keep the heat on.

San Antonio has certainly had its share of change in the past decade, crime being no exception. Despite the changes reported, for a city of over a million people, SA remains a safe place live or visit, with less than 1% of people affected by a violent crime in 2018. Residents faced with property crimes on the other hand measured roughly 40 in 1000 or 4% of the population for that year. I can personally attest to the gravity of property crime in the Alamo City; I’ve had a vehicle broken into twice and one completely stolen during my stay. I cannot say, however, that I have ever experienced violent crime, and perhaps that’s a reflection of what we see in the data: Reside in San Antonio and you may never have a criminal finger laid on you, but you may want to lock your car and take your things with you.

<a href="https://github.com/jose-marquez89/crime-in-sa/blob/master/sa_crime_data_exploration.ipynb" target="_blank" rel="noopener noreferrer" class="btn btn-secondary">Jupyter NB</a>
<a href="https://github.com/jose-marquez89/crime-in-sa" target="_blank" rel="noopener noreferrer" class="btn btn-secondary">GitHub Repo</a>
