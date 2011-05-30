# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lalunaranchwear_session',
  :secret      => '5a1d2c9b537c62a567166a029aef2608c5613e9c24348689230d5ac1b3f7c8009b0674249c736e0e01b3e99f7f1f127ccdd59900028fc157481545eae7bc52d7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
