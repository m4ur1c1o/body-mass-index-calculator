class BodyMeasure < ApplicationRecord
  belongs_to :user
  validates_presence_of :height, :weight
  before_create :calculate_bmi

  private

    def calculate_bmi
      self.bmi = self.weight / self.height**2
    end

end
