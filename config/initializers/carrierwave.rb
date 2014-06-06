CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],
      :aws_secret_access_key  => ENV['AWS_SECRET_KEY'],
      :region                 => ENV['AWS_REGION'] || 'us-east-1',
      :host                   => ENV['AWS_S3_HOST'] || 's3.amazonaws.com',
      :endpoint               => ENV['AWS_S3_ENDPOINT'] || 'https://s3.amazonaws.com'
  }
  config.asset_host     = ENV['AWS_S3_CDN_HOST'] # Remove this unless using a CDN
  config.fog_directory  = ENV['AWS_S3_BUCKET']
  config.fog_public     = true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}

  if Rails.env.test? or Rails.env.cucumber?
    config.storage = :file
    config.enable_processing = false
  end
end
