module ActionButton
  class Success < Default
    def initialize(options)
      super(options)

      @type = :success
    end

    def path
      action_buttons_success_path
    end
  end
end