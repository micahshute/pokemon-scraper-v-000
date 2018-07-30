class Pokemon
  extend Savable::ClassMethods
  include Savable::InstanceMethods

  @@all = []
  
  attr_reader :id, :name, :type, :db
  attr_accessor :hp

  def initialize(id: , name:, type: , db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
end
