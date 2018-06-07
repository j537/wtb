module Api
  class ApiController < ActionController::API
    include Knock::Authenticable
    before_action :authenticate_user
  end
end
