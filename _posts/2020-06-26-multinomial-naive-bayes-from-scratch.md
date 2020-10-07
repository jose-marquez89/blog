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

In order to translate the algorithm to code, it's helpful to understand how the algorithm will do the work. Generally, we use Bayes' Theorem to get probability proportions, which can be thought of as scores:

<div class="overflow-auto">
  $$ P(A|B) = \frac{P(B|A)P(A)}{P(B)} $$
</div>

The above reads, "The probability of A given B is equal to the probability of B given A times the probability of A, divided by the probability of B." Don't let that scare you, when applied to our particular problem, we get the following:

<div class="overflow-auto">
  $$ P(Negative|"terrible") = \frac{P("terrible"|Negative) \times P(Negative)}{P("terrible")} $$
</div>

We can discard the denominator and get individual scores for each word in a sentence. Assuming the sentence is "Terrible movie," we can get probability proportions like so:

<div class="overflow-auto">
$$ P("terrible"|Negative) \times P("film"|Negative) \times P(Negative) $$
</div>

and

<div class="overflow-auto">
$$ P("terrible"|Positive) \times P("film"|Positive) \times P(Positive) $$
</div>

These "scores" can be compared, and the highest score becomes the predicted class of the sentence! That's all the theory I'll be presenting here, as pure statistics are beyond the scope of this post. In the following snippets, we'll see how the algorithm is implemented as part of a python class using only numpy. As a first step, we provide the "alpha" value of 1 by default. We'll need that later on:

{% highlight python %}
import numpy

class MultiNayes:
    """
    Multinomial Naive Bayes algorithm.
    Paramaters
    ----------
    alpha : float, default=1.0
        Smoothing paramater, can be set to smaller values
        (0 for no smoothing)
    """

    def __init__(self, alpha=1.0):
        self.alpha = alpha
        self.fitted = False
{% endhighlight %}

Now that the classifier has an initialization method, we'll add a method to handle multi-class classification. Taking a peek through [scikit-learn's implementation](https://github.com/scikit-learn/scikit-learn/blob/master/sklearn/naive_bayes.py) of this algorithm, we find a clever way to do this: label binarization. For a simple "negative" and "positive" sentiment analysis, this might seem like an unnecessary step, but aside from allowing us to easily handle multiple classes, the binarization method also gives us a handy way to compute all the probabilities later:

{% highlight python %}
# Let's imagine we have five classes, like below
y = np.array([1, 1, 2, 2, 3, 3, 4, 4, 5, 5])

# This means we have the following classes
classes = np.array([1, 2, 3, 4, 5])

# Our binarizer returns an array like the following
# The indices match the 'classes' array
binarized = array([[1., 0., 0., 0., 0.],  # class 1
                   [1., 0., 0., 0., 0.],  # class 1
                   [0., 1., 0., 0., 0.],  # class 2
                   [0., 1., 0., 0., 0.],  # class 2
                   [0., 0., 1., 0., 0.],  # class 3
                   [0., 0., 1., 0., 0.],  # class 3
                   [0., 0., 0., 1., 0.],  # class 4
                   [0., 0., 0., 1., 0.],  # class 4
                   [0., 0., 0., 0., 1.],  # class 5
                   [0., 0., 0., 0., 1.]]) # class 5
{% endhighlight %}

The array above becomes our new target which we can use to create a matrix containing "scores" of each word given its class. Now we can "fit" data. After we make sure our matrix isn't sparse (for simplicity's sake) we create counter arrays that will count all the words or instances in the training data. For example, the arrays will contain how many times the word "bad" appears in the Positive labeled reviews and how many times it appears in the Negative:

{% highlight python %}
def fit(self, X, y):
    # if X is not np.ndarray, convert from csr with `toarray()`
    if type(X) is not np.ndarray:
        X = X.toarray()

    self.label_binarizer(y)

    n_classes = self.classes.shape[0]
    n_features = X.shape[1]

    # initialize counter arrays
    self.class_count = np.zeros(n_classes)
    self.feature_count = np.zeros((n_classes, n_features))

    # count classes and features by getting
    # dot product of transposed binary labels
    # they are automatically separated into their
    # appropriate arrays
    self.feature_count += np.dot(self.bin_labels.T, X)
    self.class_count += self.bin_labels.sum(axis=0)
{% endhighlight %}

The [dot product](https://en.wikipedia.org/wiki/Dot_product) of the transposed binarized label matrix produces the counts of all words in their respective class, which we'll need for the calculation of each word's conditional probabilities. Calculating these probabilities involves dividing the total number of appearances of a word by the total words in a class. Unfortunately, some words, like "terrible," may not appear in a class like our Positive sentiment labelled reviews. This can lead to zero division, which will give us scores of zero, compromising our classification efforts. Thankfully, we have a way around this known as smoothing, in which we add 1 (or a smaller value) to every feature occurrence. Here we add this workaround into our code:

{% highlight python %}
# add smoothing
if self.alpha > 0.0:
    self.feature_count += self.alpha
    smoothed_class_count = self.feature_count.sum(axis=1)

    # get conditional log probabilities
    self.feat_log_probs = (np.log(self.feature_count) -
                           np.log(smoothed_class_count.reshape(-1, 1)))
else:
    print(
        f"Alpha is {self.alpha}. A value this small will cause "
        "result in errors when feature count is 0"
    )
    self.feat_log_probs = np.log(
                            self.feature_count /
                            self.feature_count
                            .sum(axis=1)
                            .reshape(-1, 1)
                          )

# get log priors
self.class_log_priors = (np.log(self.class_count) -
                         np.log(self.class_count
                         .sum(axis=0)
                         .reshape(-1, 1)))

self.fitted = True
{% endhighlight %}

Although you can set the alpha value for smoothing to 0, it defaults to 1. This alpha value gets added to every word occurrence in the features, and the vocabulary size (the number of unique words in the data, or features for non-text situations) is added to the total word count as a by-product of this step. With that in place we can store the probabilities for each word, for each class, in an array that can be called upon in the "predict" method (Line 7). You may be wondering why there isn't any multiplication or division in the code, given that Bayes' Theorem from earlier necessitated some arithmetic. Not to worry, that math is still there, except that it has been replaced with log arithmetic, in which subtraction provides the result we would normally get from division when doing normal math. This is necessary because of something called [underflow](https://en.wikipedia.org/wiki/Arithmetic_underflow). To get our scores, we'd eventually need to multiply some small numbers by more small numbers, which lead to even smaller numbers!

<div class="overflow-auto">
  $$ 0.005 \times 0.005 \times 0.005 = 0.000000125 $$
</div>

This leads to a situation where the score would be so small, that it would become indistinguishable from zero, at least as far as our computers can represent. The log function takes care of this problem by representing the numbers on a natural logarithmic scale. With this issue out of the way, we can finally create a "predict" method:

{% highlight python %}
def predict(self, X):
    """Predict target from features of X"""

    # check if model has fit data
    if not self.fitted:
        print("The classifier has not yet "
              "been fit. Not executing predict")

    if type(X) is not np.ndarray:
        X = X.toarray()

    scores = np.dot(X, self.feat_log_probs.T) + self.class_log_priors

    predictions = self.classes[np.argmax(scores, axis=1)]

    return predictions
{% endhighlight %}

With the "fit" method having done most of the heavy lifting, we can once again call on the dot product approach to derive our scores. The transposition of the log probabilities makes it a breeze to "multiply" conditional probabilities of words that are repeated more than once in an observation. For example, if a review stated, "Bad, bad, just plain bad movie!" and we wanted to get the probability proportion of a Negative review, we would need to multiply the conditional probability of "bad" by itself 3 times:

<div class="overflow-auto">
  $$ P(Negative|Document) = P("bad"|Negative)^3 \times P("just"|Negative) ... $$
</div>

After adding the class log prior probabilities to our dot product, we get scores for each class, distributed across an array:

{% highlight python %}
# Each column represents a class (only 5 shown)
# Each class contains its respective score
scores = array([[ -53.98265145,  -52.46889947],
                [-104.67640081, -103.66242338],
                [-110.86473624, -113.86052394],
                [ -52.31727992,  -52.4176723 ],
                [ -51.54054949,  -49.28784963]])
{% endhighlight %}

Finally, using the argmax function to maximize the output from each row of the score array, we can call upon our predefined classes to set the prediction from each observation in our prediction feature matrix:

{% highlight python %}
# Our classifier returns predictions!
predictions = array([1, 1, 0, 0, 1]) # Pos, Pos, Neg, Neg, Pos
{% endhighlight %}

The accuracy is exactly the same as the sklearn implementation, given that the algorithms follow the same exact mathematical process.

{% highlight python %}
sklearn_prediction = sklearn_classifier.predict(X_test)
nayes_prediction = nayes.predict(X_test)

sklearn_score = accuracy_score(sklearn_prediction, y_test)
nayes_score = accuracy_score(nayes_prediction, y_test)

print(f"Scikit-Learn Score: {round(sklearn_score, 2)}")
print(f"Nayes Classifier Score: {round(nayes_score, 2)}")

# Scikit-Learn Score: 0.77
# Nayes Classifier Score: 0.77
{% endhighlight %}

Thanks for reading up to this point, I plan on tackling the Gaussian flavor of this algorithm in a future post! Check out the code in the [github](https://github.com/jose-marquez89/naive-bayes-from-scratch) repo in the meantime!
