require_relative '../proofs_init'

proof "Delegate class method to instance" do
  o = SingleObject.instance
  
  o.prove { delegates? }
end

proof "Raise error if instance does not implement class method" do
  o = SingleObject.instance

  o.prove { no_method? :some_method_that_doesnt_exist }
end
