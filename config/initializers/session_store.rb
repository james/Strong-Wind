# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_whereami_session',
  :secret      => '9c7eba4f3a9fdf49148e93c00216f9ced7028e243139e075b6014725b94511c0cfc61212060f53d4c015d327b6e05cf117cbcf27e5f04db0c8a6b6c7e6708367'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
