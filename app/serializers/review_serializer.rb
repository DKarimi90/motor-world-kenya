class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :car_id, :rating, :comments
end