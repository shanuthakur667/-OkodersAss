class UsersController < ApplicationController

  def follow_topic
    ut = current_user.user_topics.new(topic_id: params[:topic_id])
    if ut.save
      redirect_to questions_path
    else
      redirect_to questions_path
      flash[:alert] = "You already followed this topic"
    end
  end

  def follow_user
    user = Question.find_by(id: params[:question_id]).user
    ur = user.user_relationships.new(relationable_id: current_user.id, relation_type: "following")
    if ur.save
      redirect_to questions_path
      flash[:notice] = "You start follow this user"
    end
  end
end
