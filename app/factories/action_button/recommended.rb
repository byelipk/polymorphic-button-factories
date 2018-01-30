module ActionButton
  class Recommended < Default
    def initialize(options)
      super(options)

      @type = :recommended
    end

    def path
      action_buttons_recommended_path(test_variation: "v2")
    end

  end
end