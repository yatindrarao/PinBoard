class Pin < ActiveRecord::Base
	validates :title,:description,presence: true
end
