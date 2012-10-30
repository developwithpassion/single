require_relative '../proofs_init'

desc "Subclass singleton is instance of the subclass"
Proof.start do
  o = SingleObject.instance
  so = SubclassObject.instance

  o.prove { not same_instance? so }
end