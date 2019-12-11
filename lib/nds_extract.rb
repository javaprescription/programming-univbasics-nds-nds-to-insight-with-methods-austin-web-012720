require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  total = {} #empty hash to fill with results
  dir_counter = 0 #first counter is looping through the array of directors
  while dir_counter < nds.length do #while dir_counter is < 9,,,
    key1 = (nds[dir_counter][:name]) #grab the [dir_counter]th director's name and seal it inside key1
    total[key1] = 0 #establish ^key1 as a new key within the total hash from line 8. The keyword is the director name grabbed in line 11
    mov_counter = 0 #second counter is looping through array of movies
    while mov_counter < nds[dir_counter][:movies].length #while mov_counter < length of the :movies array,,,
      value = nds[dir_counter][:movies][mov_counter][:worldwide_gross] #grab the :worldwide_gross of the [dir_counter]th director's [mov_counter]th movie and seal it in a var called value
      total[key1] += value #update the value of the key we created inside the total hash by adding to it the value grabbed in line 15
      mov_counter += 1 #moves loop onto the next movie from the same director pointed to with dir_counter until all their gross proffits are added to the value stored inside the direcotr's name
    end #once a director's movie array has been completed, move on to the next director with line 19
    dir_counter += 1 #moves loop back to the next director in line
  end
  total #returns all the keys we created with their values.
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  binding.pry
  coordinate_total = 0
  inner_len = nds[row_index][column_index].length
  inner_index = 0
  while inner_index < inner_len do
    coordinate_total += nds[row_index][column_index][inner_index][:price]
    inner_index += 1
  end
  coordinate_total
end
