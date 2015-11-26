class Instrument < ActiveRecord::Base
	belongs_to :musician
	validates :name, uniqueness: true
end
