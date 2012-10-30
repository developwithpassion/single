class SingleObject
  include Single

  def some_method
    @some_value ||= Date.new
  end

  module Proof
    def delegates?
      SingleObject.some_method == some_method
    end

    def no_method?(method)
      begin
        SingleObject.send method
      rescue NoMethodError
        return true
      rescue
        return false
      end
    end

    def same_instance?(other_instance)
      self == other_instance
    end
  end
end

class SubclassObject < SingleObject
end