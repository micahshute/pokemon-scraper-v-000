class Pokemon
  extend Savable::ClassMethods, Findable::ClassMethods

  @@all = []

  attr_accessor :id, :name, :type, :db, :hp

  def initialize(id: nil, name:, type: , db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end
end
