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
            if item.send("#{k}") != v
              item.send("#{k}=", v)
            end
        end
        item
    end

    def find(id, db)
      data = db.execute("SELECT * FROM pokemon WHERE id = ?", [id])
      # create_or_update_from_data({name: data[0]})
    end
  end
end
