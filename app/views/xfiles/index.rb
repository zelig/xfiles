class Views::Xfiles::Index < Erector::Widget
  def content
    h1 do
      text 'Listing xfiles'
    end
    table do
      tr do
        th do
          text 'Name'
        end
        th do
          text 'Slug'
        end
        th do
          text 'Text'
        end
        th do
          text 'Html'
        end
        th do
          text 'Markdown'
        end
        th do
          text 'Sticky'
        end
        th do
          text 'Position'
        end
        th do
          text 'Secret'
        end
        th do
          text 'Tags'
        end
        th do
        end
        th do
        end
        th do
        end
      end
      @xfiles.each do |xfile|
        tr do
          td do
            rawtext xfile.name
          end
          td do
            rawtext xfile.slug
          end
          td do
            rawtext xfile.text
          end
          td do
            rawtext xfile.html
          end
          td do
            rawtext xfile.markdown
          end
          td do
            rawtext xfile.sticky
          end
          td do
            rawtext xfile.position
          end
          td do
            rawtext xfile.secret
          end
          td do
            rawtext xfile.tags
          end
          td do
            rawtext link_to('Show', xfile)
          end
          td do
            rawtext link_to('Edit', edit_xfile_path(xfile))
          end
          td do
            rawtext link_to('Destroy', xfile, method: :delete, data: { confirm: 'Are you sure?' })
          end
        end
      end
    end
    br
    rawtext link_to('New Xfile', new_xfile_path)
  end
end
