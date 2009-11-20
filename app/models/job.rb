module Delayed
  class PerformableMethod < Struct.new(:object, :method, :args)
  end
end

class Job < ActiveRecord::Base
  belongs_to :application
  
  validates_presence_of :application_id

  default_scope :include => :application
  named_scope :running, :conditions => ["started_at > 0"]
  named_scope :failed, :conditions => ["failed_at > 0"]
  named_scope :scheduled, :conditions => {:started_at => nil}
  named_scope :rescheduled, :conditions => ["attempts > 0"]
  
  def application_name=(app_name)
    self.application = Application.find_or_create_by_name(app_name)
  end

  def name
    y = YAML.load(handler)
    "#{y.object}:#{y.method}"
  end
  
  def args
    YAML.load(handler).args
  end

  def status
    ended_at < Time.now ? 'completed' : 'working'
  end
  
  def duration
    if ended_at.nil?
      Time.now - started_at
    else
      ended_at - started_at
    end
  end
end
