class Watering < ActiveRecord::Base

  # setup aliases to solve conflicting names
  belongs_to :waterer, :class_name => "Person", :foreign_key => "person_id"
  belongs_to :wateree, :class_name => "Plant", :foreign_key => "plant_id"
end