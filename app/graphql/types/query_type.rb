module Types
  class QueryType < Types::BaseObject
    field :current_user, resolver: Queries::User::CurrentUser
  end
end
