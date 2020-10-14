---
layout: post
title: "Data Science at Lambda School: 5 Things To Know"
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
rock star data scientist after completing the program. There are a number of things
that you'd be wise to prepare for in advance, especially if your background lacks a quantitative component.
I outline these below, along with a micro analysis of how long it takes to finish up and find work.

##### 1. Understand what data science is

If you're reading this, you probably already know that Data Science is being
touted as one of the "sexiest jobs of the 21st century". It isn't difficult to
understand why: with an [average base pay](https://www.glassdoor.com/Salaries/data-scientist-salary-SRCH_KO0,14.htm) of over $100,000 per year, a shift into this career could completely
change a person's life. It's also difficult to ignore the role of data in society;
the individuals involved in some of our most pressing issues related to data
technology have been thrust into the [spotlight](https://thehill.com/policy/technology/379170-data-scientist-offers-to-testify-before-congress-its-been-honestly-a) in recent years. Still, when I enrolled
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
derive insights from the data that weren't previously well understood. A bit of
machine learning magic might also be called into action to model some outcome
based on latent properties of the data. The job can vary widely from role to role;
I've met practitioners who exclusively utilize tools like Excel, never
writing a single line of code.

As for what data science _isn't_, there may be more things in the former box
than in this one. Data scientists aren't strictly statisticians, but they also
can't typically be totalized as software developers. Data science is a sort of
umbrella term that encompasses levels of data analysis (which might be more statistical),
machine learning (which might be a bit more software development oriented and often
presents the most rigorous math) and enough domain knowledge to
allow the practitioner to comfortably convey findings to non-technical stakeholders.   

##### 2. Preparation is key
Even with decent programming skills, I was _not_ prepared for the statistics, linear
algebra and calculus concepts that underpin data science and machine learning.
If I had more time, I would have primed myself on the aforementioned topics via
any of the great resources scattered throughout the internet. It almost doesn't matter
which you pick, the key is to simply get it done. I recommend the statistics and
pre-calculus courses on [Khan Academy](https://www.khanacademy.org/). As far as
linear algebra goes, you can take the [course](https://ocw.mit.edu/courses/mathematics/18-06-linear-algebra-spring-2010/) provided free by MIT's OpenCourseWare program. The most important
point to remember regarding theoretical foundations is that you _don't need to be an expert_
before starting the data science program, you only need to prime yourself.

As far as programming goes, I read the entirety of [_Automate The Boring Stuff With Python_](https://automatetheboringstuff.com/)
by Al Sweigart. If you don't have time to go through an entire book, [Codecademy](https://www.codecademy.com/) is a great resource, as is [freeCodeCamp](https://www.freecodecamp.org/).
Again, the key here is not mastery, just a significant exposure. The program begins with a pre-course after
you apply, and although it's good practice, it isn't nearly enough to prepare most students for
the deluge of material you'll be engulfed in after orientation.

##### 3. It's a long road
As of October, I will have been job searching for a hair over 2 months. If you're
starting soon, there's no telling what the job market will look like and what
company expectations for candidates will be. It's best to prepare for the long haul,
even if you end up getting hired before graduating. The pandemic situation completely changed
my personal job outlook, but I still planned to take at least 6 months to find a job.

I did a bit of digging through Lambda's DS Slack channel dedicated to keeping track
of when students step into the realm of the employed. You can find out more about
outcomes via a [biannual report](https://lambdaschool.com/reports/2019-outcomes-report)
published by Lambda, but it tells the data story as a whole, including web students in
the mix. My digging uncovered that at least 87 students had been hired since the first
cohort, DS1 (I was in DS11). Just for some perspective on the school's finances, it takes in a minimum
of $20k per student when they make $50k or more yearly. The 87 students hired are bound to pay the school
$1.74 million, and this debt was only achieved in about a year. The chart below shows students
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

After bootstrap resampling to get 10,000 means, (you'll certainly learn about this in the program),
the data gives us a 95% confidence interval between about 267 days and 288 days.
This just means that the interval (between the green lines on the chart) contains 95%
of our sampling distribution. The interval amounts to somewhere between 9 and 10 months; if
the full program duration is 6 months, most people can expect to be looking for a job
for 3 to 4 months.

<div class="text-center">
  <img src="/blog/assets/images/bs_day_means.png" class="img-fluid" alt="Bootstrapped means confidence interval">
</div>
<br>

##### 4. It can be pretty expensive
You might call it ironic that I couldn't afford some of the bootcamps that cost
less than Lambda. Lambda's [ISA](https://lambdaschool.com/isa) program kicks in
when your monthly income reaches $4,167. If you finish the program in its entirety,
you'll owe no less than $20k, and as far as I understand, no more than a maximum
of $30k. This has been deemed a [high cost](https://www.theverge.com/2020/2/11/21131848/lambda-school-coding-bootcamp-isa-tuition-cost-free) for what many consider a bootcamp like any other.
Can you learn data science at the level that I did for free on your own? Certainly.
However, if you don't have 5 to 10 grand sitting idly in your bank account, the
program provides a good structure, direction, community and networking. Additionally,
if you're like me and don't have a Bachelor's degree, it still might be less expensive
and time consuming than going back to school. Ultimately, you _should_ question
the value of deferring a sizable payment to the future; will it change your life
or will it just be an unnecessary financial roadblock?

##### 5. It's mentally and emotionally challenging
We've all had a rough time in 2020. In a way, Lambda kept me sane through one of
the weirdest years in recent memory. On the other hand, the accumulated stress of
constantly feeling overwhelmed by new material, imposter syndrome, attempting to find a job with
little to no prospects and spending countless hours glued to a computer took a
noticeable toll on my mental and emotional health. Make sure you have a support
system and know that you _will_ eventually be rewarded for your efforts.

All in all, it's my personal opinion that an individual with no previous experience
and a drive to succeed will ultimately make great use of a program like Lambda school.
Do plenty of research on other avenues before diving in and applying. Remember that
no matter which course you take or where you choose to go to school, you get what you
put in.

<a href="https://github.com/jose-marquez89/ds-at-lambda/blob/main/ds_hires.ipynb" target="_blank" rel="noopener noreferrer" class="btn btn-secondary">Jupyter NB</a>
<a href="https://github.com/jose-marquez89/ds-at-lambda" target="_blank" rel="noopener noreferrer" class="btn btn-secondary">GitHub Repo</a>
