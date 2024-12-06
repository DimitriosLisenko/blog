module Sidekiq
  module Vernier
    class ServerMiddleware
      def call(worker, job, queue)
        jid = job["jid"]
        klass = job["class"]
        ::Vernier.trace(out: "tmp/#{klass}-#{jid}.profile.json") do
          yield
        end
      end
    end
  end
end
