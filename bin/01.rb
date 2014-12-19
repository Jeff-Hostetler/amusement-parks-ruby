require 'yaml'
require 'pp'
require_relative '../lib/parks'

data = YAML.load(File.read('../data/amusement_parks.yml'))

pp Parks.new(data).do_stuff
