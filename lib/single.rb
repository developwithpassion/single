module Single
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def instance
      # Scott will _NEVER_ need params to new or configuration
      # 29 Oct 2012, 15:32 CDT
      @instance ||= new
    end

    def method_missing(method_id, *args, &block)
      instance.send method_id, *args, &block
    end
  end
end