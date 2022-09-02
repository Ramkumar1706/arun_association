# == Schema Information
#
# Table name: trademarks
#
#  id                        :integer          not null, primary key
#  compiled_at               :datetime
#  deadline                  :string
#  deadline_option           :integer
#  filed_at                  :datetime
#  indian_application_number :string
#  priority_at               :datetime
#  priority_number           :string
#  title                     :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  customer_id               :integer          not null
#
# Indexes
#
#  index_trademarks_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  customer_id  (customer_id => customers.id)
#
class Trademark < ApplicationRecord
  belongs_to :customer
end
