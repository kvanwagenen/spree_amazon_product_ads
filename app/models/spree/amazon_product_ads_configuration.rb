module Spree
  class AmazonProductAdsConfiguration < Preferences::Configuration
    preference :seller_id, :string, :default => ''
    preference :amazon_mws_endpoint, :string, :default => ''
    preference :marketplace_id, :string, :default => ''
    preference :aws_access_key_id, :string, :default => ''
    preference :aws_secret_access_key, :string, :default => ''

    attr_accessible :preferred_seller_id, :preferred_amazon_mws_endpoint, :preferred_marketplace_id, :preferred_aws_access_key_id, :preferred_aws_secret_access_key
  end
end