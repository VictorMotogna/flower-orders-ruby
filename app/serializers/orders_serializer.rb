class OrdersSerializer < ActiveModel::Serializer
  attributes :id, :date, :person, :flowers

  has_many :flowers, serializer: FlowersSerializer
end