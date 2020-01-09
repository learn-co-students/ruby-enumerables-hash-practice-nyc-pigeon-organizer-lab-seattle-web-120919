require 'pry'
def pigeon_names(pigeon_data)
  pigeon_names = [ ]
  pigeon_data.each do |k,hash|
    hash.each do |k2, array|
      array.each {|element| pigeon_names << element}
    end
  end
  pigeon_names.uniq
end

$pigeon_list = { }
def create_data(array_names)
  array_names.each do |element|
    $pigeon_list[element] = {color: [], gender: [], lives: []}
  end
  # $pigeon_list
end

def attribute_adder(pigeon_data)
  pigeon_data.each do |k,hash|
    hash.each do |k2, array|
      $pigeon_list.each do |name,v|
        if array.include?(name)
          if v.keys[0] == k
            $pigeon_list[name][:color] << k2.to_s
          elsif v.keys[1] == k
            $pigeon_list[name][:gender] << k2.to_s
          elsif v.keys[2] == k
            $pigeon_list[name][:lives] << k2.to_s
          end
          # binding.pry
        end
      end
    end
  end
end

def nyc_pigeon_organizer(pigeon_data)
  #get symboles to strings
  #contiue from there
  names = pigeon_names(pigeon_data)
  create_data(names)
  attribute_adder(pigeon_data)
  return $pigeon_list
end


# :color=>
#   {:purple=>["Theo", "Peter Jr.", "Lucky"],
#    :grey=>["Theo", "Peter Jr.", "Ms. K"],
#    :white=>["Queenie", "Andrew", "Ms. K", "Alex"],
#    :brown=>["Queenie", "Alex"]},
#  :gender=>
#   {:male=>["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#    :female=>["Queenie", "Ms. K"]},
#  :lives=>
#   {"Subway"=>["Theo", "Queenie"],
#    "Central Park"=>["Alex", "Ms. K", "Lucky"],
#    "Library"=>["Peter Jr."],
#    "City Hall"=>["Andrew"]}}




































# def nyc_pigeon_organizer(data)
#   names = []
#   pigeon_hash = {}

#   data.each do |attribute, items|
#     items.each do |feature, arr|
#       arr.each do |name|
#         names << name if !names.include?(name)
#       end
#     end
#   end
  
#   names.each do |element|
#     pigeon_hash[element] = Hash.new {|k, v| k[v] = []}
#     data.each do |attribute, items|
#       pigeon_hash[element][attribute]
#       items.each do |feature, arr|
#         binding.pry
#         arr.each do |name|
#           pigeon_hash[name][attribute] << feature.to_s if name == element
#         end
#       end
#     end
#   end
#   pigeon_hash
# end
