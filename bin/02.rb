# wrap code in a method - call the method
# wrap that in a class - instantiate the class,
# => then call the method on that object
# move class to separate file (in lib)
# require_relative 'path/to/new/file'

require 'yaml'
require 'pp'
require_relative '../lib/parks'

data = YAML.load(File.read('../data/amusement_parks.yml'))

parks = Parks.new(data)

pp parks.do_other_stuff
