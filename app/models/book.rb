class Book < ApplicationRecord
  belongs_to :author
  belongs_to :supplier

  validates_uniqueness_of :title
  validates_presence_of :title, :author
  validates_numericality_of :year_published
  validate :year_up_to_present

  def year_up_to_present
    errors.add(:field_name, 'Year must not be in the future') if year_published > Time.now.year
  end
end
