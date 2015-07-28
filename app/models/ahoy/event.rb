# == Schema Information
#
# Table name: ahoy_events
#
#  id         :uuid(16)         not null, primary key
#  visit_id   :uuid(16)
#  user_id    :integer
#  name       :string(255)
#  properties :text(65535)
#  time       :datetime
#

module Ahoy
  class Event < ActiveRecord::Base
    self.table_name = "ahoy_events"

    belongs_to :visit
    belongs_to :user

    serialize :properties, JSON
  end
end
