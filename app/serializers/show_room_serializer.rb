class ShowRoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :location
   has_many :cars
 end
