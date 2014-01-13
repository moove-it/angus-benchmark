# output as png image
set terminal svg

set output "benchmark.svg"

# graph title
set title "ab -n 1000 -c 100"

# nicer aspect ratio for image size
set size 1,0.7

# y-axis grid
set grid y

# x-axis label
set xlabel "Request #"

set ylabel "Response time (ms)"

plot "angus.dat" using 9 smooth sbezier with lines title "angus", \
     "sinatra.dat" using 9 smooth sbezier with lines title "sinatra", \
     "rails-api.dat" using 9 smooth sbezier with lines title "rails-api", \
     "grape.dat" using 9 smooth sbezier with lines title "grape"
