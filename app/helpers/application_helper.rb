module ApplicationHelper
  def delete_tag(obj)
    s = link_to('', obj ,{:id => "delete#{obj.id}", :class => "delete" ,:method => :delete ,:remote => "true", :onclick => "delete_row(this); return false;"})
  end
  
  def editable_field(obj, attribute, update_url = url_for(obj.type))
    s = content_tag(:span, obj.attribute_for_inspect(attribute).delete('"'), {:class => "edit_textfield", :id => obj.id, :name => attribute, :update_url => update_url})
    s << javascript_tag("editable_field( $('span[id=\"#{obj.id}\"][name=\"#{attribute}\"]') )")
  end
end


