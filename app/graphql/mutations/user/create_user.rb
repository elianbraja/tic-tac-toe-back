module Mutations::User
  class CreateUser < Mutations::BaseMutation


    argument :email, String, required: true
    argument :password, String, required:true
    argument :password_confirmation, String, required: true
    argument :first_name, String, required: true
    argument :last_name, String, required: true


    def resolve(email:, password:, password_confirmation:, first_name:, last_name:)
      new_user = ::User.new(email: email, password: password, password_confirmation: password_confirmation, first_name: first_name, last_name: last_name)
      new_user.save!
      new_user
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end

    # override
    def ready?(**args)
      true
    end

  end
end
