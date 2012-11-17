class Xfile < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  attr_accessible :markdown, :name, :secret, :sticky, :tags, :text
  acts_as_list

  before_validation :compile_html, :set_raw_text, :set_name

  validates :name, :html, :presence => true

  protected

  def set_name
    self.name = raw_text[/\S[^\r\n\f]*/, 0].truncate(100)
  end

  def compile_html
    if markdown
      begin
        self.html = Redcarpet.new(text).to_html
      rescue exc
        errors.add(:markdown, "is invalid - {exc.to_s}")
      end
    else
      "<pre>#{text}</pre>"
    end
  end

  def set_raw_text
    self.raw_text = Nokogiri::HTML(html).text
  end
end
