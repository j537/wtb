RSpec.describe Api::V1::UsersController, type: :routing do
  it { should route(:get, 'api/v1/users').to(action: :show) }
end
