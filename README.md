# conquiro

A Ruby client for [iTunes Search API](https://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html)

![https://travis-ci.org/vicentereig/conquiro.svg?branch=master](https://travis-ci.org/vicentereig/conquiro.svg?branch=master)

## Install

```ruby
  gem 'conquiro', github: 'vicentereig/conquiro'
```

## Usage

```ruby

repo    = Conquiro::SoftwareRepo.new
results = repo.query(term: 'yolo')
results.first

=> #<struct Conquiro::Software 
    features=["iosUniversal", "newsstand"], 
    supported_devices=["iPad23G", 
                       "iPhone4S", 
                       "iPodTouchourthGen", 
                       "iPadMini4G", 
                       "iPadThirdGen", 
                       "iPadFourthGen", 
                       "iPhone5c",
                       "iPhone-3GS", 
                       "iPadFourthGen4G", 
                       "iPhone4", 
                       "iPhone5s", 
                       "iPadThirdGen4G", 
                       "iPhone5", 
                       "iPodTouchFifthGen", 
                       "iPadMini", 
                       "iPad2Wifi"], 
    is_game_center_enabled=false, 
    artist_view_url="https://itunes.apple.com/us/artist/souper-media-ltd/id614415247?uo=4", 
    artwork_url60="http://a286.phobos.apple.com/us/r30/Purple4/v4/87/a5/61/87a561ac-b902-d782-439d-f87cc632e422/Icon-57-iphone.png", 
    artwork_url512="http://a360.phobos.apple.com/us/r30/Purple/v4/ce/df/9a/cedf9a72-2922-6f86-edb2-68b47e73e92d/mzl.nssegsqg.png", 
    artwork_url1100=nil, artwork_url100="http://a360.phobos.apple.com/us/r30/Purple/v4/ce/df/9a/cedf9a72-2922-6f86-edb2-68b47e73e92d/mzl.nssegsqg.png", 
    screenshot_urls=[
        "http://a4.mzstatic.com/us/r30/Purple4/v4/50/61/d0/5061d06d-b0a1-31c5-d35d-bac1121575aa/screen1136x1136.jpeg", 
        "http://a2.mzstatic.com/us/r30/Purple/v4/f1/ae/20/f1ae2060-9301-7b2c-2085-07ce28aa4d6e/screen1136x1136.jpeg", 
        "http://a2.mzstatic.com/us/r30/Purple6/v4/d5/58/a2/d558a2f8-2eed-d482-f1b7-a7ffd85b3383/screen1136x1136.jpeg", 
        "http://a4.mzstatic.com/us/r30/Purple/v4/f5/17/c6/f517c649-29a2-bd94-ce83-130869ec126a/screen1136x1136.jpeg", 
        "http://a3.mzstatic.com/us/r30/Purple/v4/f4/88/a4/f488a40e-6b6f-36fd-1851-7fc03d787073/screen1136x1136.jpeg"
    ], 
    ipad_screenshot_urls=[
        "http://a1.mzstatic.com/us/r30/Purple2/v4/96/be/70/96be7004-cff6-bd73-75ad-b751cd48ef63/screen480x480.jpeg", 
        "http://a4.mzstatic.com/us/r30/Purple/v4/c4/b2/c3/c4b2c3d6-91e0-0120-76c3-3bc3772260fb/screen480x480.jpeg", 
        "http://a5.mzstatic.com/us/r30/Purple6/v4/20/0b/5b/200b5bd0-7ff0-b41b-fb17-648f9119bcc9/screen480x480.jpeg", 
        "http://a3.mzstatic.com/us/r30/Purple/v4/c9/ef/a2/c9efa296-9275-189b-3e30-ee6b817cb495/screen480x480.jpeg", 
        "http://a1.mzstatic.com/us/r30/Purple/v4/fa/f6/18/faf618f9-2b39-edcd-55c4-73845d8ca442/screen480x480.jpeg"
     ], 
     artist_id=614415247, 
     artist_name="Souper Media Ltd", 
     price=0.0, 
     version="1.0.12", 
     description="YOLO Girl .... [REDACTED] blablabla...", 
     currency="USD", 
     genres=[
        "Entertainment", 
        "Newsstand", 
        "Children's Magazines"
     ], 
     genre_ids=["6016", "6021", "13010"], 
     release_date="2014-05-21T04:18:07Z", 
     seller_name="Souper Media Ltd", 
     seller_url="http://soupermedia.com", 
     bundle_id="com.soupermedia.YG", 
     track_id=880118624, 
     track_name="YOLO Girl Magazine", 
     primary_genre_id=6016, 
     primary_genre_name="Entertainment", 
     release_notes=nil, 
     minimum_os_version="6.0", 
     formatted_price="Free", 
     track_censored_name="YOLO Girl Magazine", 
     track_view_url="https://itunes.apple.com/us/app/yolo-girl-magazine/id880118624?mt=8&uo=4", 
     content_advisory_rating="4+", 
     language_codes_iso2_a=["EN"], 
     file_size_bytes="12693575", 
     average_user_rating_for_current_version=2.5, 
     user_rating_count_for_current_version=12, 
     track_content_rating="4+", 
     average_user_rating=2.5, 
     user_rating_count=12, 
     wrapper_type="software">
```


