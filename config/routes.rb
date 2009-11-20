ActionController::Routing::Routes.draw do |map|
  map.resources :jobs, :collection => {:failed => :get, :scheduled => :get, :rescheduled => :get}, 
                       :member => {:error_message => :get}
  
  map.root :controller => "jobs"
end
