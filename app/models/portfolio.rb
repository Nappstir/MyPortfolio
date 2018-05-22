class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  has_many :technologies
  after_initialize :set_defaults

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'RoR') }

  def set_defaults
    self.main_image ||= Placeholder.image_generator('600', '400')
    self.thumb_image ||= Placeholder.image_generator('350', '200')
  end
end