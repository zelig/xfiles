class Views::Xfiles::New < Erector::Widget

  self.ignore_extra_controller_assigns = true
  needs :xfile

  def content
    h1 do
      text 'New xfile'
    end
    #rawtext render('form')
    text @xfile.inspect
    widget(Views::Xfiles::Form, xfile: @xfile)
    link_to('Back', xfiles_path)
  end
end
