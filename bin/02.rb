require 'yaml'
require 'pp'

data = YAML.load(File.read('../data/amusement_parks.yml'))

def sort_by_country(parks)
  result = {}

  parks.each do |park|
    result = result.merge(park[:country] => [park]){|key, oldval, newval| oldval + newval}
  end

  result
end

pp sort_by_country(data)
