module Queries
  class User::CurrentUser < Queries::BaseQuery

    description 'Return current user'
    type OutputTypes::UserType, null: false

    def resolve
      context[:current_user]
    end
  end
end