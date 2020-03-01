class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @user_friends_id = []
    @array_of_events_instances = []
    @events_id = []
    @array_of_friends = []

    @user.event_users.each do |event|
      @events_id << event.event_id
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
        # p "hello there user friend id #{@user_friends_id}"
        # p "hello there array of instance #{@array_of_users_instances}"
    end
    @array_of_friends

    @eventUsers  =  EventUser.where(user_id: @user)
    @event_ids = @eventUsers.map { |eventUser| eventUser.event_id }
    @events = @event_ids.map { |id| Event.find(id) }
  end

end
