# == Schema Information
#
# Table name: contact_submissions
#
#  id           :bigint           not null, primary key
#  email        :string
#  message      :text
#  name         :string
#  organization :string
#  phone        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class ContactSubmission < ApplicationRecord
  validates :email, :name, :message, presence: true
end
