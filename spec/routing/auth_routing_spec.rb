RSpec.describe Api::V1::UserTokenController, type: :routing do
  it { should route(:post, 'api/v1/user_token').to(action: :create) }
end
