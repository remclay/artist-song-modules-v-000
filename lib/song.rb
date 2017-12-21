require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

#  def self.reset_all
#    @@songs.clear
#  end

#  def self.count
#    self.all.count
#  end

  def self.all
    @@songs
  end
end
