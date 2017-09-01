class ArrayInput < SimpleForm::Inputs::Base
  def input(wrapper_options)
    #override the attribute name for arrays to allow rails to handle array forms
    input_html_options.merge!({:name => "#{self.object_name.next}[#{attribute_name}]"})
    # puts attribute_name
    # puts self.object_name.next
    @builder.text_field(attribute_name, input_html_options)
  end
end