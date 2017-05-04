class CountWorker
 include Sidekiq::Worker
 sidekiq_options queue: :default

 def perform
  45*45
 end

end
