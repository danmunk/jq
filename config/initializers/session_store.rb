# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jq_session',
  :secret      => '89f35ae92d751f2d13390caf89c080ef7121a067d6bd1721d70bf225c85136b05c68cc5e2ecd17a7cb08485ac308e8758d9801f3f84874127f52c3552ab3b210'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
