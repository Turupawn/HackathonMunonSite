OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  file = File.open("/home/rails/facebook.secretkey", "rb")
  provider :facebook, '234879253380947', file.read.chomp
end
