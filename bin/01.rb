require 'yaml'
require 'pp'

data = YAML.load(File.read('../data/amusement_parks.yml'))

def sort_by_id(parks)
  result = {}

  parks.each do |park|
    result = result.merge(park[:id] => park)
  end

  result
end

pp sort_by_id(data)
