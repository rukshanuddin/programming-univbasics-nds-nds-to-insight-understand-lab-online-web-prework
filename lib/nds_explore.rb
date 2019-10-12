$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles
  row_index = 0
while row_index < vm.length do
  puts "Row #{row_index} has #{directors_database[row_index]} columns"
 
  column_index = 0
  while column_index < directors_database[row_index].length do
    coord = "#{row_index}, #{column_index}"
    inner_len = directors_database[row_index][column_index].length
    puts "\tCoordinate [#{coord}] points to an #{vm[row_index][column_index].class} of length #{inner_len}"
  end
end
end