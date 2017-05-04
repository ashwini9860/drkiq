class CounterJob < ActiveJob::Base
  queue_as :default
  def perform(*args)
   # DateTime.now #21+21 # Do something later
   (1...10).each{|i|
    sleep(3)
    puts "-=-=-=-=#{i}-=-=-=-=wq"
   }
   DateTime.now
  end
end
