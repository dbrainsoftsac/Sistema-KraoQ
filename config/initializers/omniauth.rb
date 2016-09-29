Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '1627892684175462', '6125a6bf2cc634ade65c806972ba09be'
  provider :facebook, '1627892684175462', '6125a6bf2cc634ade65c806972ba09be'
  provider :github, '...', '...'
end