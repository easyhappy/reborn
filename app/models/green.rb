class Green
  include Reborn::BaseMongo
  field      :name
  belongs_to :green_type
  field      :content
  field      :source_name
  field      :green_type_id, type: Integer
end