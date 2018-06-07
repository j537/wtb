module Api
  module V1
    class DarkSurveysController < Api::ApiController
      def create
        dark_survey = current_user.dark_surveys.create permitted_params
        if dark_survey.persisted?
          render json: dark_survey
        else
          render json: { error: dark_survey.errors.full_messages.to_sentence }, status: 422
        end
      end

      private

      def permitted_params
        params.permit(:is_it_dark, :are_you_afraid, :afraid_of_what)
      end
    end
  end
end
