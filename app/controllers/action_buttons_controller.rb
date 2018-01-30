class ActionButtonsController < ApplicationController
  def index
  end

  def default
    sleep 1
  end

  def success
    sleep 1
  end

  def recommend
    @test_variation = params.permit(:test_variation) || "v1"

    sleep 1
  end

  def recommended
    @test_variation = params.permit(:test_variation) || "v1"

    sleep 1
  end
end
