# == Schema Information
#
# Table name: visits
#
#  id               :uuid(16)         not null, primary key
#  visitor_id       :uuid(16)
#  ip               :string(255)
#  user_agent       :text(65535)
#  referrer         :text(65535)
#  landing_page     :text(65535)
#  user_id          :integer
#  referring_domain :string(255)
#  search_keyword   :string(255)
#  browser          :string(255)
#  os               :string(255)
#  device_type      :string(255)
#  screen_height    :integer
#  screen_width     :integer
#  country          :string(255)
#  region           :string(255)
#  city             :string(255)
#  postal_code      :string(255)
#  latitude         :decimal(10, )
#  longitude        :decimal(10, )
#  utm_source       :string(255)
#  utm_medium       :string(255)
#  utm_term         :string(255)
#  utm_content      :string(255)
#  utm_campaign     :string(255)
#  started_at       :datetime
#

class Visit < ActiveRecord::Base
  has_many :ahoy_events, class_name: "Ahoy::Event"
  belongs_to :user
end
