module Spree
  module Admin
    module AmazonProductAdsHelper
      def setting_presentation_row(setting, hide_value = false)
        value = hide_value ? Spree.t(:not_shown) : Spree::AmazonProductAds::Config[setting].to_s
        value = "&mdash;" if value.blank?
        %(
        <tr>
          <th scope="row">#{I18n.t(setting, :scope => :amazon_product_ads)}:</th>
          <td>#{value}</td>
        </tr>).html_safe
      end

      def setting_field(setting)
        type = Spree::AmazonProductAds::Config.preference_type(setting)
        res = ''
        res += label_tag(setting, Spree.t(setting) + ': ') + tag(:br) if type != :boolean
        res += preference_field_tag(setting, Spree::AmazonProductAds::Config[setting], :type => type)
        res += label_tag(setting, Spree.t(setting)) + tag(:br) if type == :boolean
        res.html_safe
      end
    end
  end
end
