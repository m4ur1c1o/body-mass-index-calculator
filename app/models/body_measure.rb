class BodyMeasure < ApplicationRecord
  belongs_to :user
  validates_presence_of :height, :weight
end
