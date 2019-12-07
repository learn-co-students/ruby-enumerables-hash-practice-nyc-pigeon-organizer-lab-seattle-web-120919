def nyc_pigeon_organizer(data)
  pigeonhash = {}
  data.each_pair do |mainkey, value|

    value.each_pair do |innerkey, namearr|
    
      namearr.each do |name|
      if !pigeonhash.has_key?(name)
        pigeonhash[name] = {}
        puts "no name making #{name} + #{innerkey}"
      end   
        
      if pigeonhash.has_key?(name) && !pigeonhash[name][mainkey]
        pigeonhash[name][mainkey] = []
        puts "creating #{name}  #{mainkey} = #{innerkey}"
      end  
 
      if pigeonhash[name][mainkey]
        pigeonhash[name][mainkey].push(innerkey.to_s)
      end   
 
      end   
    end 
  end   
  puts pigeonhash
  pigeonhash
end