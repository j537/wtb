describe 'GET api/v1/users' do
  let!(:user) { create :user }
  let!(:dark_surveys) { create_list :dark_survey, 10, user: user }

  before { get '/api/v1/users', headers: auth_headers(user) }

  it 'returns HTTP status 200' do
    expect(response).to have_http_status 200
  end

  it 'returns the requested user' do
    expect(json_response[:email]).to eq(user.email)
  end

  it 'returns the requested dark surveys' do
    expect(json_response[:dark_surveys].size).to eq(10)
  end
end
