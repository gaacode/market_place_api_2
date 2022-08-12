class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at, :updated_at

  has_many :products, key: :product_ids do
    object.product_ids
  end
end
