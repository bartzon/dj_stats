class JobsController < ApplicationController
  protect_from_forgery :except => [:create, :update, :destroy]
  
  def index;        @jobs = Job.running;      end
  def failed;       @jobs = Job.failed;       end
  def scheduled;    @jobs = Job.scheduled     end
  def rescheduled;  @jobs = Job.rescheduled;  end
  
  def create
    job = Job.new(params[:job])
    if job.save
      render :xml => job, :status => :created
    else
      render :xml => job.errors, :status => :unprocessable_entity
    end
  end
  
  def update
    job = Job.find_by_remote_id(params[:id])
    if job.update_attributes(params[:job])
      render :nothing => true, :status => :ok
    else
      render :nothing => true, :status => :unprocessable_entity
    end
  end

  def destroy
    job = Job.find_by_remote_id(params[:id])
    if job.destroy
      render :nothing => true, :status => :ok
    else
      render :nothing => true, :status => :unprocessable_entity
    end
  end
  
  def error_message
    @job = Job.find(params[:id])
  end
end