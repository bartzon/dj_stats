# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dj_stats_session',
  :secret      => '92111396a0d6ad1fd311bccd5574d22dc2e066a2fd1ed547b10626a6f7d03d5bc1562ed776d996970c388171f70dfbb5666e5a8fbd224f032a5b62b795e45597'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
