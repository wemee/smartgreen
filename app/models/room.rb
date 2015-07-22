class Room < ActiveRecord::Base
  belongs_to :school
  has_many :sensors
end
