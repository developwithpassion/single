module Singleton
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def get_instance(&block)
      instance_eval do
        @get_instance_block = block
      end
    end

    def method_missing(method_id, *args, &block)
      @instance ||= instance_eval do 
        instance_exec &@get_instance_block
      end
      @instance.send "#{method_id}", *args, &block
    end
  end
end