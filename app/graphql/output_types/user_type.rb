module OutputTypes
  class UserType < OutputTypes::BaseObject

    description 'Returns the current user'

    field :id, ID, 'user id', null: false
    field :email, String, 'user email', null: false
    field :token, String, 'user token', null:false
  end
end