class UsersController < ApplicationController

  def follow_topic
    ut = current_user.user_topics.new(topic_id: params[:topic_id])
    if ut.save
      redirect_to questions_path
    else
      redirect_to questions_path, error: "You already followed this topic"
    end
  end
end
