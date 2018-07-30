module Findable
  module ClassMethods
    def find_by_name(name)
        self.all.find{|i| i.name == name}
    end

    def create_or_update_from_data(data)
        return if data[:name].nil?
        found = self.find_by_name(data[:name])
        item = found.nil? ? self.new : found
        data.each do |k,v|
            item.send("#{k}=", v)
        end
        item
    end
  end
end
