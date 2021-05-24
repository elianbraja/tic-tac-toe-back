# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  article    :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
end
