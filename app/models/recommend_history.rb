class RecommendHistory < ApplicationRecord
   belongs_to :chair, optional: true
end
