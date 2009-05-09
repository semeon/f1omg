# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_f1omg_session',
  :secret      => 'c929c39c7b53987dc4b79d827c3a87bac6421780422a0ee18a48a733304a274af7a461d1dd27c4edb5e66de89503613e0b9c95338369687c29a71975a7bf6933'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
