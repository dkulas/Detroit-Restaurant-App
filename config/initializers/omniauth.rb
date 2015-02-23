Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "AeOTp9By88tnm8QJgQ814Is25", "2mmztxkY9dNw5u7BbAkQD7e1gpbOulzLcAlElfSFPQBCLdpyFv",
  {
  	:force_login => 'true'
  }
end