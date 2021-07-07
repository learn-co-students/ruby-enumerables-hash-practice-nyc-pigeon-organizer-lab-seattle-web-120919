def nyc_pigeon_organizer(data)
  result = {}
  data.each do |info, value|
    value.each do |stats, names|
      names.each do |name|
        if !result[name]
          result[name] = {}
        end
        if !result[name][info]
          result[name][info] = []
        end
        result[name][info].push(stats.to_s)
      end
    end
  end
  result
end
