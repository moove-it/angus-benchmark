class UserSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name

  def id
    object.id
  end

  def name
    object.name
  end

end