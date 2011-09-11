module DataMapper
  class Property
    class Class < Object
      load_as         ::Class
      coercion_method :to_constant

      # @api semipublic
      def typecast(value)
        return unless value
        DataMapper::Ext::Module.find_const(model, value.to_s)
      rescue NameError
        value
      end

    end # class Class
  end # class Property
end # module DataMapper
