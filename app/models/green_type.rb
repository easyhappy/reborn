class GreenType
  include Reborn::BaseMongo
  include ActiveModel::Validations
  field :name

  validates :name, uniqueness: {message: '名称必须唯一， 已有相同的名称存在了'}, presence: {message: '名称不能为空'}
end