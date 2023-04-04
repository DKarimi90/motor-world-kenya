class Car < ApplicationRecord
 
    belongs_to :show_room
    has_many :reviews 
    has_many :users, through: :reviews
   
    validates :price, presence: true
    validates :model, presence: true
    validates :name, presence: true, uniqueness: true
    validates :image_url, presence: true

end
