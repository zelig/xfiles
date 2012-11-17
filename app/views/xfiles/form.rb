class Views::Xfiles::Form < Erector::Widget

  needs :xfile

  def content
    form_for(@xfile) do |f|
      if @xfile.errors.any?
        div :id => 'error_explanation' do
          h2 do
            rawtext pluralize(@xfile.errors.count, "error")
            text 'prohibited this xfile from being saved:'
          end
          ul do
            @xfile.errors.full_messages.each do |msg|
              li do
                rawtext msg
              end
            end
          end
        end
      end
      div :class => 'field' do
        rawtext f.label :name
        br
        rawtext f.text_field :name
      end
      div :class => 'field' do
        rawtext f.label :slug
        br
        rawtext f.text_field :slug
      end
      div :class => 'field' do
        rawtext f.label :text
        br
        rawtext f.text_area :text
      end
      div :class => 'field' do
        rawtext f.label :html
        br
        rawtext f.text_area :html
      end
      div :class => 'field' do
        rawtext f.label :markdown
        br
        rawtext f.check_box :markdown
      end
      div :class => 'field' do
        rawtext f.label :sticky
        br
        rawtext f.check_box :sticky
      end
      div :class => 'field' do
        rawtext f.label :position
        br
        rawtext f.number_field :position
      end
      div :class => 'field' do
        rawtext f.label :secret
        br
        rawtext f.check_box :secret
      end
      div :class => 'field' do
        rawtext f.label :tags
        br
        rawtext f.text_field :tags
      end
      div :class => 'actions' do
        rawtext f.submit
      end
    end
  end
end
