RSpec.describe Api::V1::UserTokenController, type: :request do
  describe 'Get user token successfully' do
    let!(:user) { create :user }
    before { post '/api/v1/user_token',
      params: {
      	"auth": {
      		"email": user.email,
      		"password": user.password
      	}
      }
    }

    it 'returns HTTP status 201' do
      expect(response).to have_http_status 201
    end
  end

  describe 'Failed to get user token' do
    let!(:user) { create :user }
    before { post '/api/v1/user_token',
      params: {
      	"auth": {
      		"email": user.email,
      		"password": 'wrong pasword'
      	}
      }
    }

    it 'returns HTTP status 404' do
      expect(response).to have_http_status 404
    end
  end
end
