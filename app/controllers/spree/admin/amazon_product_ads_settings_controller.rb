class Spree::Admin::AmazonProductAdsSettingsController < Spree::Admin::BaseController
  helper 'spree/admin/amazon_product_ads'
  
  def update
    params.each do |name, value|
      next unless Spree::AmazonProductAds::Config.has_preference? name
      Spree::AmazonProductAds::Config[name] = value
    end
    
    respond_to do |format|
      format.html {
        redirect_to admin_amazon_product_ads_settings_path
      }
    end
  end

end
