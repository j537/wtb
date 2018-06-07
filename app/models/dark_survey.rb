class DarkSurvey < ApplicationRecord
  belongs_to :user

  validates :is_it_dark, :are_you_afraid, inclusion: { in: [ true, false ] }
  validates :afraid_of_what, presence: true
end
