require_relative '../proofs_init'

desc "Delegate class method to instance"
Proof.start do
  o = SingleObject.instance
  
  o.prove { delegates? }
end

desc "Raise error if instance does not implement class method"
Proof.start do
  o = SingleObject.instance

  o.prove { no_method? :some_method_that_doesnt_exist }
end
