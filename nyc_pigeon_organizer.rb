require 'pp'
require 'pry'

def nyc_pigeon_organizer(data)
new_hash = {}
  
data.each do |key, value| #puts keys of color, gender and lives and the value is their big empty hashes 
  value.each do |new_value, names| #new_value are the colors within the color key, so purple, grey, white, brown. and for each of those it will do the names within those which are the names of the birds
    names.each do |name| #then, for each of the bird names it goes and puts each name. 

      if !new_hash[name] #if name isn't set in new_hash yet
        new_hash[name] = {} #then make the name key of new_hash equal to an empty hash. 
      end
      
      #binding.pry

      if !new_hash[name][key] #if the name's key isn't set in new_hash yet 
        new_hash[name][key] = [] #then make the name key of new_hash equal to an empty array. ex: name-alex. key- color. color = [] #with colors in it.
      end
      
      

      new_hash[name][key] << new_value.to_s #this pushes in the #new_values which are the colors into new_hash's name #key's key. 
    end
  end
end
new_hash
end























# def nyc_pigeon_organizer(data)
#   new_hash = {}
#   new_array = []

#   data.values.each do |hash|
#     hash.values.flatten #gives array of arrays. 
#     hash.values.flatten.each do |name| 
#     #   new_array << name
#     # end  
#     # new_array.uniq
#     if new_hash[name] ==nil
#       new_hash[name] = {}
#     end
#   end
#   end 
#   new_hash
# end 

  #Iterate over the hash above, collecting each pigeon by name 
  #and insert it as the key of a new hash. each of these hashes should have 
  #color gender and lives keys assigned to arrays of info about that particular pigeon



