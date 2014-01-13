$: << (File.dirname(__FILE__))

require 'bundler'

Bundler.setup

require 'grape'
require 'grape-entity'

require 'services/grape_benchmark'

run GrapeBenchmark