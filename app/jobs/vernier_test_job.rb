class VernierTestJob
  include Sidekiq::Worker
  sidekiq_options queue: :default
  sidekiq_options retry: false

  def perform
    sleep_seconds = rand(10)
    ::Rails.logger.info("Sleeping for #{sleep_seconds} seconds")
    sleep(sleep_seconds)
    ::Rails.logger.info("Done sleeping for #{sleep_seconds} seconds")
  end
end
