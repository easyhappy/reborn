module Reborn
  module BaseMongo
    extend ActiveSupport::Concern

    included do
      include Mongoid::Document
      include Mongoid::Timestamps
    end
  
    def edit_button
      '编辑'
    end

    def delete_button
      '删除'
    end
  end
end