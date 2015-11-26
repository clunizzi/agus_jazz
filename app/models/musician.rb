class Musician < ActiveRecord::Base
	has_many :instruments
	has_many :recordings, dependent: :destroy
	has_many :concerts, :through => :recordings
end
