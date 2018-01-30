module ActionButton
  class Recommend < Default
    def initialize(options)
      super(options)

      @type = :recommend
    end

    def path
      action_buttons_recommend_path(test_variation: "v2")
    end

  end
end