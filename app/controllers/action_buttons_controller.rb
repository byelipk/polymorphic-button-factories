class ActionButtonsController < ApplicationController
  def index
    @count = 576
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

  def like_with_count
    @count = params[:count].to_i + 1

    sleep 1
  end

  def unlike_with_count
    @count = params[:count].to_i - 1

    sleep 1
  end
end
