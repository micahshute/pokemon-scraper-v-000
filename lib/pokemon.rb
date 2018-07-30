require_relative './concerns/savable.rb'
class Pokemon
  extend Savable::ClassMethods
  include Savable::InstanceMethods
  attr_reader :id, :name, :type, :db
  attr_accessor :hp

  def initialize(id: , name:, type: , db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
end
