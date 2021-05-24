module Types
  class MutationType < Types::BaseObject
    field :create_user, OutputTypes::UserType, mutation: Mutations::User::CreateUser, null:true
    field :confirm_email, OutputTypes::ResultType, mutation: Mutations::User::ConfirmEmail, null:true
    field :login_user, OutputTypes::UserType, mutation: Mutations::User::LoginUser, null:true

  end
end
