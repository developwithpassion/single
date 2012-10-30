require_relative '../proofs_init'

desc "Singleton is always the same instance"
Proof.start do
  o = SingleObject.instance
  
  o.prove { same_instance? SingleObject.instance }
end