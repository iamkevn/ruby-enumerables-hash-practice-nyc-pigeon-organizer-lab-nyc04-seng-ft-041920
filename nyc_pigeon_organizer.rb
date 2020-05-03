


pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)
  # write your code here!
  sorted_hash = {}
  data.each do |attribute, set_of_attributes|
    set_of_attributes.each do |detail, names|
      names.each do |name|
        sorted_hash[name] = {}
        sorted_hash[name][attribute] ||= []
        sorted_hash[name][attribute] << detail.to_s
      end
    end
  end

=begin

  data.each do |attribute, set_of_attributes|
    set_of_attributes.each do |detail, names|
      names.each do |name|
        sorted_hash[name][attribute] = []
      end
    end
  end
  data.each do |attribute, set_of_attributes|
    set_of_attributes.each do |detail, names|
      names.each do |name|
        sorted_hash[name][attribute] << detail.to_s
      end
    end
  end
=end
  sorted_hash
end
