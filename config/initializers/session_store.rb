# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sa_session',
  :secret      => '7e88de7502e1fdd3446fef62e9bf457a1f188e375e09c2dafd41e2c8d7fe0db2c830921f145c2e62da72113e097e0d63bb9bad387d14e2fb392047d9a88ccb2b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
