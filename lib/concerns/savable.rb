module Savable
  module ClassMethods

     def all
         self.class_variable_get("@@all")
     end

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

     def clear
         self.all.clear
     end


    def save(name, type, db)
      db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", [name, type])
    end

 end

 module InstanceMethods

 end
end
