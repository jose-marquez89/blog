---
layout: post
title: "Data Science at Lambda School: 3 Things You Should Know"
date: 2020-10-13
featured-image: assets/images/dark-data.jpg
featured-alt-txt: "lambda image"
categories: Data Science
photo-credit: "Markus Spiske"
photo-credit-link: "https://unsplash.com/@markusspiske?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText"
comments: true
---
If you've been thinking about joining Lambda School's Data Science program,
there are more than a few things you should know before you commit your time and
energy. It took me over 6 months to finish the curriculum, but I wasn't exactly a
rock start data scientist after completing the program. There are a number of things,
especially if your background doesn't contain any sort of quantitative experience,
that you'd be wise to prepare for in advance. I outline these below, including a
micro analysis of how long it takes to finish up and find work.

##### 1. Understand what data science is

If you're reading this, you probably already know that Data Science is being
touted as one of the "sexiest jobs of the 21st century". It isn't difficult to
understand why: with an [average base pay](https://www.glassdoor.com/Salaries/data-scientist-salary-SRCH_KO0,14.htm) of over $100,000 per year, a shift into this career could completely
change a person's life. It's also difficult to ignore the role of data in society,
and the individuals involved in some of our most pressing issues surrounding data
technology have been recently thrust into the spotlight. Still, when I enrolled
in the program at Lambda School, I had no idea what data science was. I'm a little
embarrassed to admit that I decided on the program impulsively, based almost entirely
on the fact that the primary programming language was Python (I had been teaching myself
the language for almost a year before applying).

I eventually learned that the definition of data science is still evolving, but
it can be summarized into a fairly concise description. Data science is a combination
of statistical analysis, programming, and understanding of the domain or industry
in which you perform data science. A data scientist might source her company's
data from a database, formulate some questions to ask of the data, and then use
some sort of technology toolkit (Python, R, Excel, Power BI, Tableau, etc.) to
derive insights from the data that weren't previously well understood. A data
scientist might then realize that the data can be used to predict the future, in
which case a bit of machine learning magic might be called into action to model
some outcome based on latent properties of the data. There are even practitioners who's
primary tool is a program like Excel, and never write a single line of code.

As far as what data science _isn't_, there may be more things in the former box
than in this one. Data scientists aren't strictly statisticians, but they also
can't typically be totalized as software developers. Data science is a sort of
umbrella term that encompasses data analysis (which might be more statistical),
machine learning (which might be a bit more software development oriented and often
presents the most rigorous math) and a degree of domain knowledge that would
allow someone to comfortably convey findings to non-technical stakeholders.   

##### 2. Be prepared for a tough challenge
Even with decent programming skills, I was _not_ prepared for the statistics, linear
algebra and calculus concepts that underpin data science and machine learning.
If I had more time, I would have primed myself on the aforementioned topics via
any of the great resources scattered throughout the internet. It almost doesn't matter
which you pick, the key is to simply get it done. I recommend the statistics and
pre-calculus courses on [Khan Academy](https://www.khanacademy.org/). As far as
linear algebra goes, you can take the [course](https://ocw.mit.edu/courses/mathematics/18-06-linear-algebra-spring-2010/) provided free by MIT's OpenCourseWare program. The most important
point to remember regarding theoretical foundations is that you _don't need to be an expert_
before starting the data science program, you only need to prime yourself.

As far as programming goes, I read the entirety of _Automate The Boring Stuff With Python_
by Al Sweigart, but if you don't have time to go through an entire book, [Codecademy](https://www.codecademy.com/) is a great resource as is [freeCodeCamp](https://www.freecodecamp.org/).
Again, the key here is to be primed. The program begins with a pre-course after
you apply, which provides some practice, but isn't nearly enough to prepare for
the deluge of material you'll be engulfed in after orientation.

##### 3. The entire process will take about 9 months to 1 year
As of October, I will have been job searching for a bit over 2 months. If you're
starting soon, there's no telling what the job market will look like and what
company expectations for candidates will be. It's best to prepare for a long haul,
even if you end up getting hired before graduated. The pandemic situation completely changed
my personal job outlook, but I still planned to take at least 6 months to find a job.

I did a bit of digging through Lambda's DS Slack channel dedicated to keeping track
of when students step into the realm of the employed. You can find out more about
outcomes via a [biannual report](https://lambdaschool.com/reports/2019-outcomes-report)
published by Lambda, but it tells the data story as a whole, including web students in
the mix. My digging uncovered that at least 87 students had been hired since the first
cohort, DS1 (I was in DS11). Just for some perspective, the school takes in a minimum
of $20k per student when they make $50k or more yearly. 87 students are bound to pay the school
$1.74 million, and this was only achieved in about a year. The chart below shows students
hired from each cohort.

<div class="text-center">
  <img src="/blog/assets/images/hired_count.png" class="img-fluid" alt="Counts of students hired per cohort">
</div>
<br>

I collected the hire date for each cohort and used the start date of my own to
estimate the average length of time spent in the program before getting hired. It's
important to keep in mind that there are many variables and this is only an estimate.
The following graphic is the distribution of length of time-to-hire for all 87
students hired since DS1, which would have started around February 2019.

<div class="text-center">
  <img src="/blog/assets/images/days_to_hire_dist.png" class="img-fluid" alt="Distribution of days to hire">
</div>
<br>

After bootstrap resampling about 10,000 means, (you'll certainly learn about this in the program),
the data gives us a 95% confidence interval between about 267 days and 288 days. This
means that we can be fairly certain that the true mean lies somewhere within
this interval. That amounts to somewhere between 9 to 10 months.

<div class="text-center">
  <img src="/blog/assets/images/bs_day_means.png" class="img-fluid" alt="Bootstrapped means confidence interval">
</div>
<br>
