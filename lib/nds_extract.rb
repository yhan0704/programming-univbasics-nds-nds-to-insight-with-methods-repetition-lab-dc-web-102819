$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0
  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end
  total
end

def list_of_directors(source)
  director_index = 0
  array=[]
  while director_index < source.length do
    array << source[director_index][:name]
    director_index+=1
  end
  array
end
 
def total_gross(source)
<<<<<<< HEAD
  total = 0
  index = 0
  while index < source.length do
    list_directors = list_of_directors(source)[index]
    total += directors_totals(source)[list_directors]
    index+=1
  end
  total
=======
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  # total = 0
  # index = 0
  # while index < source.length do
  # if directors_totals(list_of_directors(source)[index])
  #   total += directors_totals(source[index])
  #   index +=1
  # end
  # total
  pp directors_totals(source)
>>>>>>> f4d4f683938dbb490dbe0f19e491b5a382bdbd8a
end



