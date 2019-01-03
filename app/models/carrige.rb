class Carrige < ApplicationRecord
  belongs_to :train

  before_validation :set_number

  validates :number, presence: true

  scope :economy, -> { where(type: 'EconomyCarriage') }
  scope :coupe, -> { where(type: 'CoupeCarriage') }
  scope :exclusive, -> { where(type: 'ExclusiveCarriage') }
  scope :sitting, -> { where(type: 'SittingCarriage') }
  scope :ordered, -> { order(:number).uniq }

  def set_number
    self.number ||= rand(10)
  end
end
