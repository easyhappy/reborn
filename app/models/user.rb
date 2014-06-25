class User
  include Mongoid::Document
  field :name
  field :email
  field :phone_number
  field :password
end