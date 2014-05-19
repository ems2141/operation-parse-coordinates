class ParseCoordinates
  def initialize(spy_location)
    @spy = spy_location
  end

  def parse
    #take the spy location
    # split at \n
    # split each line by character
    # iterate through each row and search for 'X'
    # keep track of which row we are in with an iterator
    # keep track of column by the index of the 'X'

    i = 0 # row index
    j = 0 # column index
    lines = @spy.split("\n")
    lines.each do |line|
      if line.include?(["X"])
       j = line.index("X")
      end
      i += 1
    end
    result = [i, -j]
  end
end

