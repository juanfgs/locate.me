require_relative '../init'

class Status
  include DataMapper::Resource

  property :id, Serial
  property :latlon, String
end


Status.finalize
