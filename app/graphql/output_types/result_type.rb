module OutputTypes
  class ResultType < OutputTypes::BaseObject

    description 'Return a generic result'

    field :success, Boolean, 'Boolean', null: false
    field :errors, [String], null: true

  end
end
