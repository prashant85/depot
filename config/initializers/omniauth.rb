OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['177636095703328'], ENV['1c745e636b68d253be56eb667a1433f9']
end