## Homework 2
### Problem statement A.3.2
Nearest neighbor and smallest angle. Using Julia, find the nearest neighbor of a = (1, 3, 4) among
the vectors<br>
x1 = (4, 3, 5), x2 = (0.4, 10, 50), x3 = (1, 4, 10), x4 = (30, 40, 50).<br>
Report the minimum distance of a to x1, . . . , x4. Also, find which of x1, . . . , x4 makes the smallest
angle with a and report that angle.<br>

### Problem statement A.4.2
Topic discovery via k-means. In this problem you will use k-means to cluster 300 Wikipedia
articles selected from 5 broad groups of topics. The Julia file wikipedia_corpus.jl contains the
histograms as a list of 300 1000-vectors in the variable article_histograms. It also provides the
list of article titles in article_titles and a list of the 1000 words used to create the histograms
in dictionary.<br>
The file kmeans.jl provides a Julia implementation of the k-means algorithm in the function
kmeans. The kmeans function accepts a list of vectors to cluster along with the number of clusters,
k, and returns three things: the centroids as a list of vectors, a list containing the index of each
vector’s closest centroid, and a list of the value of J after each iteration of k-means. Each time the
function kmeans is invoked it initializes the centroids by randomly assigning the data points to k
groups and taking the k representatives as the means of the groups. (This means that if you run
kmeans twice, with the same data, you might get different results.)<br>
For example, here is an example of running k-means with k = 8 and finding the 30th article’s
centroid.<br>
```
include("wikipedia_corpus.jl")
include("kmeans.jl")
using Kmeans
centroids, labels, j_hist = kmeans(article_histograms, 8)
centroids[labels[30]]
```
The list labels contains the index of each vector’s closest centroid, so if the 30th entry in labels
is 7, then the the 30th vector’s closest centroid is the 7th entry in centroids.<br>
There are many ways to explore your results. For example, you could print the titles of all articles
in a cluster.
```
julia> article_titles[labels .== 7]
16-element Array{UTF8String,1}:
"Anemometer"
"Black ice"
"Freezing rain"
...
```
Alternatively, you could find a topic’s most common words by ordering dictionary by the size of
its centroid’s entries. A larger entry for a word implies it was more common in articles from that
topic.
```
julia> dictionary[sortperm(centroids[7],rev=true)]
1000-element Array{ASCIIString,1}:
"wind"
"ice"
"temperature"
...
```
(a) For each of k = 2, k = 5, and k = 10 run k-means twice, and plot J (vertically) versus
iteration (horizontally) for the two runs on the same plot. Create your plot by passing a
vector containing the value of J at each iteration to PyPlot’s plot function. Comment briefly
on your results.<br>
(b) Choose a value of k from part (a) and investigate your results by looking at the words and
article titles associated with each centroid. Feel free to visit Wikipedia if an article’s content
is unclear from its title. Give a short description of the topics your clustering discovered along
with the 3 most common words from each topic. If the topics do not make sense pick another
value of k.

