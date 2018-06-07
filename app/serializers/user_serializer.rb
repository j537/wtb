class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :dark_surveys
end
