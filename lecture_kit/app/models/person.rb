class Person < ActiveRecord::Base

    has_many :plant_parenthoods
    has_many :plants, through: :plant_parenthoods

    has_many :waterings
    has_many :waterees, through: :waterings

    def water_plant(plant)
        Watering.create(person_id: self.id, plant_id: plant.id)
        parenthood = plant_parenthoods.find_by(plant: plant)
        # binding.pry
        if parenthood
            affection = parenthood.affection || 0
            affection += 1
            parenthood.update(affection: affection)
        end
    end
end