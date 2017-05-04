class CounterJob < ActiveJob::Base
  queue_as :default
  def perform(*args)
   # DateTime.now #21+21 # Do something later
   
   DateTime.now
  end
end
