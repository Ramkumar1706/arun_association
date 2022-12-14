# == Schema Information
#
# Table name: nbas
#
#  id                        :bigint           not null, primary key
#  abs_at                    :datetime
#  compiled_at               :datetime
#  deadline                  :string
#  deadline_option           :integer
#  filed_at                  :datetime
#  indian_application_number :string
#  nba_number                :string
#  title                     :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  customer_id               :bigint           not null
#
# Indexes
#
#  index_nbas_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  fk_rails_...  (customer_id => customers.id)
#
class Nba < ApplicationRecord
  belongs_to :customer
end
