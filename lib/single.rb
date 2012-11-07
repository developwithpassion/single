module Single
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def instance
      @instance ||= new
    end

    def method_missing(method_id, *args, &block)
      instance.send method_id, *args, &block
    end
  end
end
