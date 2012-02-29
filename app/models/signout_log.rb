class SignoutLog < ActiveRecord::Base
	belongs_to :device, :polymorphic => true
	belongs_to :current_person
	belongs_to :former_person_1
	belongs_to :former_person_2
end
