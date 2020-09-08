def nyc_pigeon_organizer(data)
    pigeon_list = data.each_with_object({}) do |(key, value), new_hash|
        value.each do |inner_key, names|
            names.each do |name|
                if !new_hash[name]
                    new_hash[name] = {}
                end
                if !new_hash[name][key]
                    new_hash[name][key] = []
                end
                new_hash[name][key].push(inner_key.to_s)
            end
        end
    end
    pigeon_list
end
