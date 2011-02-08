# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bid_session',
  :secret      => 'a00de06a38f78a8b2b8fc6a944a554f0fee56528e658f72a5b32789ca14e766145e25551ad4ecdc3f07d433ffe3123c70611bd903b0d5730549fd0c008d1bce2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
