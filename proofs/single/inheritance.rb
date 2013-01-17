require_relative '../proofs_init'

proof "Subclass singleton is instance of the subclass" do
  o = SingleObject.instance
  so = SubclassObject.instance

  o.prove { not same_instance? so }
end
