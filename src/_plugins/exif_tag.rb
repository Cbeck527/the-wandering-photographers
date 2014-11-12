# -*- coding: utf-8 -*-
# A Liquid tag rof Jekyll sites that allows showing exif data.
# by: Gosuke Miyashita
#
# Example usage: {% exif /images/sample.jpg %}

require 'exifr'

module Jekyll
  class ExifTag < Liquid::Tag
    def render(context)
      post_image_file = File.expand_path(File.dirname(__FILE__)) + "/../images/" + context.environments.first["page"]["image"]
      exif = EXIFR::JPEG::new(post_image_file)
      <<-HTML
<li>#{exif.model}</li>
<li>#{exif.focal_length.to_i}mm</li>
<li>f/#{exif.f_number.to_f}</li>
<li>#{exif.exposure_time.to_s}</li>
<li>ISO #{exif.iso_speed_ratings}</li>
      HTML
    end
  end
end

Liquid::Template.register_tag('exif', Jekyll::ExifTag)
