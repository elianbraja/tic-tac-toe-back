module Mutations
  # This class is used as a parent for all mutations, and it is the place to have common utilities
  class BaseMutation < GraphQL::Schema::Mutation
    null false

    # Before loading any data from the database, you might want to see if the user has a certain
    # permission level.
    def ready?(**args)
      # Called with mutation args.
      # Use keyword args such as employee_id: or **args to collect them
      if context[:current_user].nil?
        raise GraphQL::ExecutionError, "Only logged users can run this mutation"
      else
        true
      end
    end
  end
end