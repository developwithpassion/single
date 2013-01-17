require_relative '../proofs_init'

proof "Singleton is always the same instance" do
  o = SingleObject.instance
  
  o.prove { same_instance? SingleObject.instance }
end
