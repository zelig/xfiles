# encoding: utf-8
class Views::Layouts::Application < Erector::Widget
  def content
    rawtext '<!DOCTYPE html>'
    html do
      head do
        title do
          text 'Xfiles'
        end
        rawtext stylesheet_link_tag    "application", :media => "all"
        rawtext javascript_include_tag("application")
        rawtext csrf_meta_tags
      end
      body do
        h1 "Xfiles @ Übergeek"
        #rawtext @content_for_layout # Note: you must define @content_for_layout elsewhere
        content_for(:layout)
        #rawtext content_for(:layout)
        #out :layout
      end
    end
  end

end


