class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :email, :customerName, :contactName, :address, :city, :postalCode, :country, :created_at, :updated_at, :last_login, :role
end
