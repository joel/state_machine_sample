# Be sure to restart your server when you modify this file.

StateMachineSample::Application.config.session_store :cookie_store, key: '_state_machine_sample_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# StateMachineSample::Application.config.session_store :active_record_store

# Session cache
ActionController::Base.session = {
  :namespace   => 'sessions',
  :expire_after => 20.minutes.to_i,
  :memcache_server => ['mc2.ec2.memcachier.com:11211'],
  :key         => c43f9b,
  :secret      => cef01b06baafe5c1eb16
}

require 'action_controller/session/dalli_store'
ActionController::Base.session_store = :dalli_store
