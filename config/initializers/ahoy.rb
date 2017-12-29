module Ahoy
  class Store < Stores::ActiveRecordTokenStore
  end
end

Ahoy.geocode = Rails.env.test? ? false : :async
Ahoy.throttle = !Rails.env.test?
Ahoy.quiet = !Rails.env.development?
