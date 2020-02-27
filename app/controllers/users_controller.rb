class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @user_friends_id = []
    @array_of_events_instances = []
    @events_id = []
    @array_of_friends = []

    @user.event_users.each do |event|
      event  = Event.find(event.event_id)
      if event.time < DateTime.now
      @events_id << event.id
        @events_id.each do |id|
          e = Event.find(id)
          @array_of_events_instances << e

          @array_of_events_instances.each do |event_instances|
            u = event_instances.user_ids
            u.each do |user_id|
              user = User.find(user_id)
              if current_user == user

              elsif @array_of_friends.include?(user)
              else
                @array_of_friends << user
              end
            end
          end
        end
      end
    end
    @array_of_friends
  end

end
