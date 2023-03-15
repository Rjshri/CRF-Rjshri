class Gait < ApplicationRecord
  has_many_attached :references
  has_many_attached :ethicals
  has_many_attached :prescrptions
  has_many_attached :clinicals
  belongs_to :user
  serialize :output_format
end
