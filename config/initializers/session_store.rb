# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rf-Accounting_session',
  :secret      => '014e6e071cbe46b6310964494ba08de71d213619b885566f9002917f4c63c21058509cc594a8a9c5e7d5542a8deb71f06b620ba12d49df71b441d516c8069aff'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
