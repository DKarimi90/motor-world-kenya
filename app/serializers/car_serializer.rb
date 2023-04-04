class CarSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :name, :model, :mileage, :transmission, :price
end
