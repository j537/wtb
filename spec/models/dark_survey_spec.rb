require 'rails_helper'

RSpec.describe DarkSurvey, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.create(:dark_survey)).to be_valid
  end

  context 'validations' do
    it { should validate_presence_of :afraid_of_what }
    it { should belong_to(:user) }
  end
end
