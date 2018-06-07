describe 'POST api/v1/dark_surveys' do
  let!(:user) { create :user }
  let!(:dark_survey) { create :dark_survey }

  before { post '/api/v1/dark_surveys',
           headers: auth_headers(user),
           params: dark_survey.slice(:is_it_dark, :are_you_afraid, :afraid_of_what)
         }

  it 'returns HTTP status 200' do
    expect(response).to have_http_status 200
  end

  it 'returns the created dark survery' do
    created_ds = user.dark_surveys.first
    expect(json_response[:id]).to eq(created_ds.id)
    expect(json_response[:is_it_dark]).to eq(created_ds.is_it_dark)
    expect(json_response[:are_you_afraid]).to eq(created_ds.are_you_afraid)
    expect(json_response[:afraid_of_what]).to eq(created_ds.afraid_of_what)
  end
end

describe 'Failed to POST api/v1/dark_surveys' do
  let!(:user) { create :user }
  let!(:dark_survey) { create :dark_survey }

  before { post '/api/v1/dark_surveys',
           headers: auth_headers(user),
           params: dark_survey.slice(:are_you_afraid, :afraid_of_what)
         }

  it 'returns HTTP status 422' do
    expect(response).to have_http_status 422
  end
end
