class Views::Xfiles::Edit < Erector::Widget
  def content
    h1 do
      text 'Editing xfile'
    end
    rawtext render('form')
    rawtext link_to('Show', @xfile)
    text '|'
    rawtext link_to('Back', xfiles_path)
  end
end
