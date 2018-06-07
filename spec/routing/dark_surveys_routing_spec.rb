RSpec.describe Api::V1::DarkSurveysController, type: :routing do
  it { should route(:post, 'api/v1/dark_surveys').to(action: :create) }
end
