load "lib/sidekiq/vernier/server_middleware.rb"
# configure sidekiq server
::Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    chain.add ::Sidekiq::Vernier::ServerMiddleware
  end
end
::Sidekiq.strict_args!
