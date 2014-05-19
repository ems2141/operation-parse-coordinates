require 'spec_helper'
require_relative '../lib/parse_coordinates'

describe ParseCoordinates do
  it "returns an array of the coordinates of the spy" do
    spy_location = "+======+
    |******|
    |******|
    |*X****|
    +======+"

    find_the_x = ParseCoordinates.new(spy_location).parse

    expect(find_the_x).to eq [1, -2]
  end
end