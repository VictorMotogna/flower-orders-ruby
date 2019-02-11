class OrdersSerializer < ActiveModel::Serializer
  attributes :id, :date, :person, :flowers

  def flowers 
    self.object.flowers.map do |flower|
      {
        name: flower.name, 
        color: flower.color,
        number: flower.number
      }
    end 
  end 
end
