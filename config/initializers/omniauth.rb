OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '234879253380947', 'a62e632861479525615ae7c02b9ba8fc'
end
