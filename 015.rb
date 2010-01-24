puts "Starting in the top left corner in a 20 by 20 grid, how many routes are there to the bottom right corner?"

def paths dim
  grid = [Array.new(dim,1)]
  for i in 1..(dim-2)
    grid[i] = Array.new(dim,1)
    for j in 1..(dim-1)
      grid[i][j] = grid[i][j-1] + grid[i-1][j]
    end
  end
  half = 1 + grid.inject(0){|tot,arr| tot+=arr.inject{|sum,v| sum+=v}}
  2 * half
end

def answer
  paths 20
end

puts answer
