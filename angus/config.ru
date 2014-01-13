$: << (File.dirname(__FILE__))

require 'bundler'

Bundler.setup

require 'angus'
require 'services/angus_benchmark'

run AngusBenchmark.new