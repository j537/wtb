class DarkSurveySerializer < ActiveModel::Serializer
  attributes :id, :is_it_dark, :are_you_afraid, :afraid_of_what, :created_at
end
