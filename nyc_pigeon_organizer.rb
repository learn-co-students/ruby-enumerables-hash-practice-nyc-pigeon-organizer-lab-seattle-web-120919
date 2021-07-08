require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  males = data[:gender][:male]
  females = data[:gender][:female]
  bird_names = males + females

  # Create keys based on names with empty values
  bird_names.each do |n|
    new_hash[n] = {color: [],
                  gender: [],
                  lives: []}
  end

  # For each hash in the color hash,
  data[:color].each do |key, value|
    # Iterate through the names for each color
    # and push the color key onto the array for that name
    value.each do |v|
      new_hash[v][:color].push(key.to_s)
    end
  end

  # For each hash in the gender hash,
  data[:gender].each do |key, value|
    # Iterate through the names for each gender
    # and push the gender key onto the array for that name
    value.each do |v|
      new_hash[v][:gender].push(key.to_s)
    end
  end

  # For each hash in the lives hash,
  data[:lives].each do |key, value|
    # Iterate through the names for each lives
    # and push the lives key onto the array for that name
    value.each do |v|
      new_hash[v][:lives].push(key.to_s)
    end
  end
  new_hash
end
