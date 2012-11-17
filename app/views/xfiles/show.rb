class Views::Xfiles::Show < Erector::Widget
  def content
    p :id => 'notice' do
      rawtext notice
    end
    p do
      b do
        text 'Name:'
      end
      rawtext @xfile.name
    end
    p do
      b do
        text 'Slug:'
      end
      rawtext @xfile.slug
    end
    p do
      b do
        text 'Text:'
      end
      rawtext @xfile.text
    end
    p do
      b do
        text 'Html:'
      end
      rawtext @xfile.html
    end
    p do
      b do
        text 'Markdown:'
      end
      rawtext @xfile.markdown
    end
    p do
      b do
        text 'Sticky:'
      end
      rawtext @xfile.sticky
    end
    p do
      b do
        text 'Position:'
      end
      rawtext @xfile.position
    end
    p do
      b do
        text 'Secret:'
      end
      rawtext @xfile.secret
    end
    p do
      b do
        text 'Tags:'
      end
      rawtext @xfile.tags
    end
    rawtext link_to('Edit', edit_xfile_path(@xfile))
    text '|'
    rawtext link_to('Back', xfiles_path)
  end
end
