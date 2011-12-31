require "s3"

@@S3 = S3::Service.new(
  :access_key_id     => ENV['S3_ACCESS_KEY_ID'],
  :secret_access_key => ENV['S3_SECRET_KEY_ID']
)