class FooUser < User
  cancel_validates_proc = Proc.new do |attribute|
    _validate_callbacks.
      select{|vc| vc.filter.respond_to?(:attributes) && vc.filter.attributes == [attribute] }.
      each{|vc| skip_callback(:validate, vc.kind, vc.filter)}
  end
  cancel_validates_proc.call(:nickname)
  cancel_validates_proc.call(:note)
end
