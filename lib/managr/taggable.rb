module Managr
  ##
  # Adds tag functionality to a model.
  # 
  module Taggable
    extend ActiveSupport::Concern
    
    included do
      has_many :taggings, as: :taggable
      has_many :tags, through: :taggings
    end
  end
end