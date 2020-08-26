---
layout: post
title: "Multinomial Naive Bayes: Classification From Scratch"
date: 2020-06-26
featured-image: assets/images/vintage-robot-with-lots-of-black-negative-space.jpg
featured-alt-txt: "Vintage robot on black background"
categories: Machine Learning
photo-credit: "Matt Henry"
photo-credit-link: "https://www.instagram.com/matt_henry_photo/"
comments: true
---

It’s sensible to aspire to precision in Data Science, but facets of the discipline often resemble art more than the methodical nature its name suggests. Such is the case with the Naive Bayes Classification algorithm. For situations with with well defined categories and many variables (features, as they’re properly known), a classifier of this sort provides a quick and simple way to separate new information into known categories. The multinomial ([from the multinomial distribution](https://en.wikipedia.org/wiki/Multinomial_distribution)) variety of this classifier has a history of being used in document classification tasks, such as differentiating between emails in the spam and non-spam categories (or ham, if you prefer).

Far from the accuracy and power of potent natural language processing techniques, the “art” of Multinomial Naive Bayes Classification lies in its assumptions about the data being analyzed. Consider the sentence “I can’t believe I paid money to see _The Last Airbender_.” Thanks to our familiarity with language, we immediately understand a few potentially obvious things about the sentence. We know that the words denote a negative movie review, that the word “paid” is likely to increase the appearance of the word “money,” and we’re aware that the effect of the words “can’t”, “believe”, “I” and “paid” combined, suggest more negativity than any one of those words alone. Naive Bayes ignores this possibility and assumes that the words’ effects are independent of each other, hence the name. In this post, I’ve broken down the algorithm to it’s basic parts in Python and Numpy.

Since the algorithm in question is so handy for quick and dirty document classification baselines, we’ll start with a data set of [sentiment-labelled IMDb movie reviews](https://archive.ics.uci.edu/ml/datasets/Sentiment+Labelled+Sentences). Here are few sample reviews from the data set, a zero marks a review as “negative” and a one as “positive”:

    Even if you love bad movies, do not watch this movie.  	0
    I wasn't the least bit interested.  	0
    Everything about this film is simply incredible.  	1
    This is such a fun and funny movie.  	1
