require_relative '../init'

class Status
  include DataMapper::Resource

  property :id, Serial
  property :latitude, String
  property :longitude, String

  
  def to_proc
    proc {|prop| "cordinates are #{prop}" }
  end
end


Status.finalize
