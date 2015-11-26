class Recording < ActiveRecord::Base
  belongs_to :musician
  belongs_to :concert
end
