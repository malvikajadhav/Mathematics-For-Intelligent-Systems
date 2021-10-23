a = [1, 3, 4]
x1 = [4, 3, 5]
x2 = [0.4, 10, 50]
x3 = [1, 4, 10]
x4 = [30, 40, 50]

using LinearAlgebra
d1 = norm(a-x1)
d2=norm(a-x2)
d3=norm(a-x3)
d4=norm(a-x4)

print("Distance between a and x1 : ")
print(d1)

print("Distance between a and x2 : ")
print(d2)

print("Distance between a and x3 : ")
print(d3)

print("Distance between a and x4 : ")
print(d4)

angle_a_x1 = acosd(dot(a,x1)/(norm(a)*norm(x1)))
angle_a_x2 = acosd(dot(a,x2)/(norm(a)*norm(x2)))
angle_a_x3 = acosd(dot(a,x3)/(norm(a)*norm(x3)))
angle_a_x4 = acosd(dot(a,x4)/(norm(a)*norm(x4)))

print("Angle between a and x1 : ")
print(angle_a_x1)

print("Angle between a and x2 : ")
print(angle_a_x2)

print("Angle between a and x3 : ")
print(angle_a_x3)

print("Angle between a and x4 : ")
print(angle_a_x4)


include("wikipedia_corpus.jl")
include("kmeans.jl")
using Main.Kmeans
using Statistics

using Pkg
Pkg.add("PyCall") 
Pkg.add("PyPlot")

using PyPlot 
iters = 2
k = 2
for iters in 1:iters
    centroids, labels, j = kmeans(article_histograms, 2) 
    plot([iters for iters in 1:length(j)],j)
    legend(["first run","second run"])
    title("Clustering Objective for k=2")
    xlabel("Iterations")
    ylabel("J_clust")
end


using PyPlot 
iters = 2
k = 5
for iters in 1:iters
    centroids, labels, j = kmeans(article_histograms, k) 
    plot([iters for iters in 1:length(j)],j)
    legend(["first run","second run"])
    title("Clustering Objective for k=5")
    xlabel("Iterations")
    ylabel("J_clust")
end

using PyPlot 
iters = 2
k = 10
for iters in 1:iters
    centroids, labels, j = kmeans(article_histograms, k) 
    plot([iters for iters in 1:length(j)],j)
    legend(["first run","second run"])
    title("Clustering Objective for k=10")
    xlabel("Iterations")
    ylabel("J_clust")
end

centroids, labels, j_hist = kmeans(article_histograms, 5)

article_titles[labels .== 1]

class1=dictionary[sortperm(centroids[1],rev=true)]
class1[1:3]

article_titles[labels .== 2]

class2=dictionary[sortperm(centroids[2],rev=true)]
class2[1:3]

article_titles[labels .== 3]

class3=dictionary[sortperm(centroids[3],rev=true)]
class3[1:3]

article_titles[labels .== 4]

class4=dictionary[sortperm(centroids[4],rev=true)]
class4[1:3]

article_titles[labels .== 5]

class5=dictionary[sortperm(centroids[5],rev=true)]
class5[1:3]
