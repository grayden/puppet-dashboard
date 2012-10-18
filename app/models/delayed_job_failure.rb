class DelayedJobFailure < ActiveRecord::Base
  def self.per_page; 25 end

  scope :unread, :conditions => { :read => false }
  serialize :backtrace
end
