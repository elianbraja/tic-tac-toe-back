module OutputTypes
  class BaseObject < GraphQL::Schema::Object
    description "description missing"

    def self.scope_items(items, context)
      items
    end
  end
end
