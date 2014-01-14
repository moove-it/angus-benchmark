Project used to benchmark angus performance
================================

This project is composed of a simple REST API, implemented in couple of different frameworks to
test the difference in performance. And a simple ruby script to benchmark them and save the results
as a svg.
The benchmark is done with [ab] (http://httpd.apache.org/docs/2.2/programs/ab.html) and the data
generated is directly plotted with [gnuplot] (http://www.gnuplot.info/)

Prerequisites
--------------------------------

* ruby
* gnuplot (http://www.gnuplot.info/)
* ab (Apache HTTP server benchmarking tool) (http://httpd.apache.org/docs/2.2/programs/ab.html)

Installation
--------------------------------

```bash
git clone git@github.com:Moove-it/angus-benchmark.git
cd angus-benchmark
bundle install
```

Basic Usage
--------------------------------

```bash
./benchmark
```

Output
--------------------------------

The benchmark results will be saved to benchmark.svg.


Misc
--------------------------------

The servers used to benchmark are thin when using MRI and mizuno when using JRuby.
The script switches the server used when to match the ruby interpreter.