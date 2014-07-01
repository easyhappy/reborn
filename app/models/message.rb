class Message
  include Mongoid::Document
  include Mongoid::Timestamps

  field :email
  field :content
end