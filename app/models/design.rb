# == Schema Information
#
# Table name: designs
#
#  id                        :bigint           not null, primary key
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
#  customer_id               :bigint           not null
#
# Indexes
#
#  index_designs_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  fk_rails_...  (customer_id => customers.id)
#
class Design < ApplicationRecord
  belongs_to :customer
end
