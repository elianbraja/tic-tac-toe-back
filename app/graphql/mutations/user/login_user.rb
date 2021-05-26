module Mutations::User
  class LoginUser < Mutations::BaseMutation

    description "Login for users"

    argument :email, String, description: "Email for login", required: true
    argument :password, String, "Password for login", required: true

    def resolve(email:, password:)
      user = User.find_by_email(email)
      if user && user.valid_password?(password) && user.confirmed?
        user
      else
        raise GraphQL::ExecutionError, nil
      end

    rescue ActiveRecord::RecordNotFound => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end

    def ready?(**args)
      true
    end

  end
end
