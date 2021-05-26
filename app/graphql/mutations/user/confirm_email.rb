module Mutations::User
  class ConfirmEmail < Mutations::BaseMutation

    description "Confirm user email"
    argument :email_token, String, description: "token received by email", required: true

    def resolve(email_token:)

      user = User.confirm_by_token(email_token)
      {success: user.confirmed?}

    end

    #override
    def ready?(**args)
      true
    end

  end
end
