require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), new_hash|
    value.each do |inner_key, names|
      names.each do |name|
        if !new_hash[name]
          binding.pry
          new_hash[name] = {}
        end
        if !new_hash[name][key]
          new_hash[name][key] = []
        end
        new_hash[name][key].push(inner_key.to_s)
        binding.array
      end
    end
  end
end
