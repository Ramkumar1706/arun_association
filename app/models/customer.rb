# == Schema Information
#
# Table name: customers
#
#  id             :integer          not null, primary key
#  address_line_1 :string
#  address_line_2 :string
#  asuserid       :string
#  city           :string
#  country        :string
#  customer_type  :integer
#  name           :string
#  state          :string
#  telephone      :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Customer < ApplicationRecord
  # Enum
  enum customer_type: [:applicant, :associate]

  # Associations
  has_many :nbas, dependent: :destroy
  has_many :designs, dependent: :destroy
  has_many :patents, dependent: :destroy
  has_many :trademarks, dependent: :destroy

  # Scopes
  scope :ids_and_names_hash, -> { pluck(:id, :name).to_h }
end
