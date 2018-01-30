module ActionButton
  class Factory
    # A factory's job is to manufacture the correct player of a role.
    # They don't know what to do, they know how to choose who does.
    # Use polymorphism instead of conditionals that know:
    #   1) why you might need one condition over another
    #   2) and knows the behavior needed in that case

    # Open factory
    # ------------
    # + No conditionals
    # - Harder to understand
    # - No explicit class references in code
    # - Ignores classes whose name does not follow convention
    #
    def self.for(type, options={})
      begin
        const_get("ActionButton::#{type.to_s.camelize}")
      rescue NameError
        Default
      end.new(options)
    end

    # Closed factory
    # --------------
    # + Understands the reasons for switching
    # + Knows the name of the class that supplies the behavior
    # - Uses conditionals
    # - Not open
    # - More complex to extend
    # def self.for(type, options={})
    #   case type
    #   when :success
    #     ActionButton::Success
    #   when :accept
    #     ActionButton::Accept
    #   when :message
    #     ActionButton::Message
    #   when :connect
    #     ActionButton::Connect
    #   when :request_sent
    #     ActionButton::RequestSent
    #   when :welcomed
    #     ActionButton::Welcomed
    #   when :recommend
    #     ActionButton::Recommend
    #   when :recommended
    #     ActionButton::Recommended
    #   else
    #     ActionButton::Default
    #   end.new(options)
    # end
  end
end