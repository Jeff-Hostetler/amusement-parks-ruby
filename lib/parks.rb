class Parks

  def initialize(parks)
    @parks = parks
  end

  def do_stuff
    result = {}

    @parks.each do |park|
      result = result.merge(park[:id] => park)
    end

    result
  end

  def do_other_stuff
    result = {}

    @parks.each do |park|
      result = result.merge(park[:country] => [park]){|key, oldval, newval| oldval + newval}
    end

    result
  end

end
