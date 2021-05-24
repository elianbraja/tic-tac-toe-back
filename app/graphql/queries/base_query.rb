module Queries
  class BaseQuery < GraphQL::Schema::Resolver

    def authorized?(**args)

      # Called with mutation args.
      # Use keyword args such as employee_id: or **args to collect them
      if context[:current_user].nil?
        raise GraphQL::ExecutionError, "Only logged users can run this query"
      else
        # Return true to continue the query:
        true
      end
    end

  end
end
