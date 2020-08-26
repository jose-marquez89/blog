---
layout: post
title: "Covid-19: What's Everyone Talking About?"
date: 2020-04-03
featured-image: assets/images/three-disposable-face-masks.jpg
featured-alt-txt: "Three Disposable Face Masks"
categories: NLP
photo-credit: "Thom Bradley"
photo-credit-link: "https://thombradley.ca/"
comments: true
---

The explosion of Coronavirus related Tweets comes as no surprise, but what are people talking about surrounding COVID-19 this week? If you wanted to know what the major topics are, you could sit down in front of a phone or computer and perform a quick search on Twitter, but in order to really separate the noise from the signal, you’d need to get a bit more methodical. Perhaps you could start some sort of tally for each subject you encounter and then count those tallies at the end, arriving at the most salient topics…or, you could use a technique known as Latent Dirichlet Allocation. With this technique, it was far easier to see that this week’s conversations were directed around President Trump, New York Gov. Andrew Cuomo, and…the My Pillow guy? I plan on continuing work around this small project, but the following is what I’ve learned so far.

#### What The Heck is LDA?

Latent Dirichlet Allocation is a magic box to which you feed a mass of text, and in return, the grateful box returns a set of topics associated with the text. This is almost true, except that LDA relies not on magic, but instead on probability. More specifically, LDA has the power to take a set of texts and derive the subject material latent in said corpus (the set of texts/documents). How does it do this? The fine details of LDA’s inner workings are beyond the scope of this post, but you you can still get the gist. LDA assumes that you’ve created your tweets (you probably didn’t) using the following process:

1. You decided how many words the tweet would contain
2. You chose a mixture of topics using the Dirichlet distribution
3. You generate each word in the tweet by choosing a topic and then using that topic to generate your words

Given the above assumption, LDA then attempts to reverse engineer topics from the documents to find a set of topics that probably created your mass of tweets. This is a very high level (as in 30,000 foot view) description of LDA. The inner workings are full of mind bending math and statistics concepts, which you may or may not want to explore if you’re in the middle of a lockdown.

#### Twitter's Current Corona Convo

What kind of topics did I unearth? Using python and [gensim](https://radimrehurek.com/gensim/), I was able to extract 10 somewhat distinct topics. These are the first 3 topic outputs of the 10 that the LDA model returned. Don’t worry if you can’t make anything out immediately. Even upon completion and output, LDA still requires human interpretation.

{% highlight python %}
[(0,
  '0.069*"trump" + 0.040*"testing" + 0.022*"needs" + 0.022*"free" + 0.020*"treatment" + 0.019*"pelosi" + 0.018*"state" + 0.017*"period" + 0.015*"work" + 0.013*"cnn"'),
 (1,
  '0.040*"world" + 0.027*"media" + 0.027*"doctors" + 0.024*"cases" + 0.021*"need" + 0.019*"highest" + 0.017*"declaring" + 0.017*"hacks" + 0.016*"patients" + 0.015*"safe"'),
 (2,
  '0.047*"today" + 0.031*"great" + 0.027*"people" + 0.026*"president" + 0.023*"cuomo" + 0.023*"briefing" + 0.023*"whitehouse" + 0.022*"died" + 0.021*"andrew" + 0.020*"honor"')
{% endhighlight %}

For interpretation’s sake, these are the topics that the model came up with, condensed from the original output. The words are arranged in order of their probability of being associated with the numbered topic, from greatest to least:

    1. “Trump”, “testing”, “needs”, “free”, “treatment”, “Pelosi”, “state”, “period”, “work”, “cnn”
    2. “world”, “media”, “doctors”, “cases”, “need” “highest, “declaring”, “hacks”, “patients”, “safe”
    3. “today”, “great”, “people”, “president”, “cuomo”, “briefing”, “whitehouse”, “died”, “andrew”, “honor”
    4. “positive”, “day”, “home”, “new”, “workers”, “tested”, “stay”, “york”, “healthcare”, “nurse”
    5. “people”, “masks”, “health”, “stop”, “care”, “think”, “pillow”, “guy”, “saying”
    6. “cases”, “deaths”, “help”, “crisis”, “fights”, “news”, “hospital”, “chinese”, “won”, “new”
    7. “Trump”, “president”, “white”, “house”, “health”, “man”, “cnn”, “got”, “response”, “public”
    8. “pandemic”, “death”, “support”, “officials”, “end”, “soon”, “impact”, “americans”, “having”
    9. “Trump”, “americans”, “Dr”, “million”, “briefing”, “live”, “test”, “news”, “old”, “says”
    10. “china”, “realdonaldtrump”, “medical”, “want”, “like”, “new”, “know”, “times”, “news”

As you can probably observe, some of these have more substance than others. Topic 1 seems to be about CNN’s article fact checking the President regarding a possible suggestion of free treatment for those ill with Coronavirus. Topic 3 clearly has something to do with Andrew Cuomo, but it’s unclear what, although an article from CBS news gives a clue: Cuomo held a [briefing on New York’s response to COVID-19](https://www.cbsnews.com/news/new-york-governor-andrew-cuomo-coronavirus-briefing-on-covid-19-response-watch-live-stream-today-2020-03-28/). Topic 4 appears to be about New York’s healthcare workers, testing and staying home. A strange couple of words came up in topic 5, “pillow guy”. A quick search revealed that topic 5 is likely to be about My Pillow CEO Mike Lindell announcing his company’s [efforts to make over 50,000 cotton masks](https://people.com/politics/how-my-pillow-ceo-mike-lindell-president-trump-became-friends/). The other topics seem a bit generic, repeating some words generally associated with the current pandemic.

#### Lessons learned

LDA preprocessing and interpretation can be tricky, and I learned several things in the process of carrying this out on via the Twitter API. First of all, the API itself is tricky and took me a significant portion of the allotted time to learn and understand. There’s a wrapper for python known as [tweepy](http://www.tweepy.org/), but I’m not sure that it offered the flexibility in terms of searching via the API that my attempt required. Once I got the tweets, however, gensim made short work of topic modelling. Some of the less-than-obvious topic results I got however, lead me to believe that the process would benefit from a removal of more words from the base stopword dictionary, in order to filter out more redundancies like “pandemic”, “health”, or “news”. I plan on returning to this project in coming months, and I’ll publish version 2 when I do!

{% if page.comments %}
<div id="disqus_thread"></div>
<script>

	var disqus_config = function () {
	this.page.url = "{{ "the-tech-job-hiring-landscape.html" | absolute_url}}";  // Replace PAGE_URL with your page's canonical URL variable
	this.page.identifier = "{{ page.title }}"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
	};
	(function() { // DON'T EDIT BELOW THIS LINE
		var d = document, s = d.createElement('script');
		s.src = 'https://josemarquez.disqus.com/embed.js';
		s.setAttribute('data-timestamp', +new Date());
		(d.head || d.body).appendChild(s);
	})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
{% endif %}
