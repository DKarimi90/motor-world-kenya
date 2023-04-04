class Review < ApplicationRecord
    belongs_to :user
    belongs_to :car
 
    # validates :comments, presence: true
    # validates :rating, presence: true
    # validates :car_id, presence: true
end
