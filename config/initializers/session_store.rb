# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railsvw_session',
  :secret      => '55eae7e094ca6dd28f6cc5bb1ac4108ac7b156cd150c6209ac981cd91ec02ec4603c9fb0737a20874e1f358aa5228204a8f9e7af68d6c34bba5317916771b56c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
