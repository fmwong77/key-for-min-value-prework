# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == nil
    nil
  else
    min_value = nil
    min_key = nil
    name_hash.collect do |key, value|
      if min_value == nil 
        min_value = value
        min_key = key
      end
      if value < min_value
        min_value = value
        min_key = key
      end
    end
  end
  
  min_key
end