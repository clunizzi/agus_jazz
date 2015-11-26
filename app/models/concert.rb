class Concert < ActiveRecord::Base
	has_many :recordings, dependent: :destroy
	has_many :musicians, :through => :recordings
	accepts_nested_attributes_for :musicians, reject_if: :all_blank, allow_destroy: true
end
