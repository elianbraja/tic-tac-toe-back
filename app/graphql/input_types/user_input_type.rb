module InputTypes
  class UserInputType < InputTypes::Base

    description 'Fields for user update'

    argument :firstName, String, description: 'user first name', required: false
    argument :lastName, String, description: 'user last name', required: false

  end
end
