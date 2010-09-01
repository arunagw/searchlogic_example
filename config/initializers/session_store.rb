# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_searchlogic_blog_session',
  :secret      => 'c99b6dc271bd462311b4ad4d29ff7cb47107d53174fa4a500750d3936c837a454a339f7552770998b01da8bf4ba74ddefd5e6f12325184d701935552ac416648'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
