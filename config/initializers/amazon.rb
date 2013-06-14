# ENV = YAML.load_file("#{::Rails.root}/config/amazon_api.yml")[::Rails.env]
Amazon::Ecs.options = {
  :associate_tag => ENV['associatetag'],
  :AWS_access_key_id => ENV['accesskeyid'],
  :AWS_secret_key => ENV['secretkey']
}
# puts AMAZON_CONFIG['associatetag'] + "___________________________"