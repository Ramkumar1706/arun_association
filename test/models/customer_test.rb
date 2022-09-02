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
require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
