module ActionButton
  class Factory
    # A factory's job is to manufacture the correct player of a role.
    # Factories don't know what to do, they know how to choose who does.
    #
    # Code that knows:
    #
    #   1) why one condition applies over another
    #   2) the behavior needed in that case
    #
    # is evil! 😼
    #
    # For example, look at this contrived code:
    #
    #   def get_button_type(number)
    #     case number
    #     when 1
    #       number > 1 ? 1 : 0
    #     when 2
    #       2
    #     when number > 8
    #       number % 2 == 0 ? number : number + 1
    #     else
    #       number * 3
    #     end
    #   end
    #
    # This example knows the answers to a few subtle questions:
    #
    #   How many different kinds of numbers are there?
    #   Which numbers are most alike? In what way?
    #   Which numbers are most different? In what way?
    #   What is the rule to determine the behavior given a number?
    #
    # This code is hard to change because it has intimate knowledge
    # of so many details.
    #
    # Instead we can use factories with polymorphism. The factory
    # will figure out which class to use based on a single condition.
    # It knows nothing of the behavior. This separation of concerns 
    # makes our code resiliant to change, easy to reason about, and 
    # very extensible.

    # Open factory
    # ------------
    # + No conditionals
    # + Very extensible if we follow the pattern
    # - Harder to understand because it uses metaprogramming
    # - No explicit class references in code
    # - Ignores classes whose name does not follow convention
    #
    # def self.for(type, options={})
    #   begin
    #     const_get("ActionButton::#{type.to_s.camelize}")
    #   rescue NameError
    #     Default
    #   end.new(options)
    # end

    # Closed factory
    # --------------
    # + Understands the reasons for switching
    # + Knows the name of the class that supplies the behavior
    # + Not coupled to a naming convention
    # - Uses conditionals
    # - Not open
    # - More complex to extend
    def self.for(type, options={})
      case type
      when :success
        ActionButton::Success
      when :recommend
        ActionButton::Recommend
      when :recommended
        ActionButton::Recommended
      when :like_with_count
        ActionButton::LikeWithCount
      when :unlike_with_count
        ActionButton::UnlikeWithCount
      else
        ActionButton::Default
      end.new(options)
    end
  end
end