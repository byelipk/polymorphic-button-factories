module ActionButton
  class Recommended < Default
    def initialize(options)
      super(options)

      @type = :recommended
    end

    def path
      action_buttons_recommended_path
    end

    def show_test_variation_icon?
      if options[:test_variation] == "v2"
        true
      else
        false
      end
    end

  end
end