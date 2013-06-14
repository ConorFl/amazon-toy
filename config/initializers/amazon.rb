Amazon::Ecs.options = {
  :associate_tag => ENV['associatetag'],
  :AWS_access_key_id => ENV['accesskeyid'],
  :AWS_secret_key => ENV['secretkey']
}
