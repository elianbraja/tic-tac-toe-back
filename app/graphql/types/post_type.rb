module Types
  class PostType < Types::BaseObject
    field :title, String, null:false
    field :article, String, null:false
  end
end