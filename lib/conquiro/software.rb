module Conquiro
  class Software  < Struct.new(:kind, :features, :supported_devices, :is_game_center_enabled,
                                   :artist_view_url, :artwork_url60, :artwork_url512, :artwork_url1100, :artwork_url100,
                                   :screenshot_urls, :ipad_screenshot_urls, :artist_id,
                                   :artist_name, :price, :version, :description, :currency,
                                   :genres, :genre_ids, :release_date, :seller_name, :seller_url, :bundle_id,
                                   :track_id, :track_name, :primary_genre_id, :primary_genre_name, :release_notes, :minimum_os_version, :formatted_price, :track_censored_name,
                                   :track_view_url, :content_advisory_rating, :language_codes_iso2_a, :file_size_bytes,
                                   :average_user_rating_for_current_version, :user_rating_count_for_current_version,
                                   :track_content_rating, :average_user_rating, :user_rating_count, :wrapper_type, :advisories,
                                   :is_vpp_device_based_licensing_enabled)
  end
end
