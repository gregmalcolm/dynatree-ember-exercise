class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :folder, :hidden, :read_only
end
