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
    end
        # p "hello there user friend id #{@user_friends_id}"
        # p "hello there array of instance #{@array_of_users_instances}"

        @array_of_friends


    #the next lines find events that i have attended to find my friends:
    @eventUsers  =  EventUser.where(user_id: @user.id)
    @event_ids = @eventUsers.map { |eventUser| eventUser.event_id }
    @events = []
    @event_ids.each  do |id|
      event = Event.find(id)
      @events << event
    end
    @all_my_events = []
    @events
    @events.each do |event|
      @all_my_events << event
    end
    @all_my_created_events = Event.where(creator: @user.id)
    @all_my_created_events.each do |event|
      @all_my_events << event
    end


    #set variables to today, sunday, and last day of the month
    @d = Date.today
    @monday = @d.at_beginning_of_week
    @sunday = @monday+6.day
    @last_day_this_month = Date.today.end_of_month
    @events_this_week = []
    @events_this_month = []
    range = (@monday..@sunday)


    #the next lines  find events this week compared to events this week
    # @all_my_events.each do |event|
    #   p event
    # end
    @all_my_events.each do |event|
      if event.time.to_date > @d && event.time.to_date < @sunday
       @events_this_week << event
      end
    end
    if @events_this_week.count > 1
      @events_this_week = @events_this_week.sort_by{ |event| event.time }
    else
      @events_this_week
    end


    @all_my_events.each do |event|
      if event.time.to_date > @sunday && event.time.to_date < @last_day_this_month
       @events_this_month << event
      end
    end
    if @events_this_month.count > 1
      @events_this_month = @events_this_month.sort_by{ |event| event.time }
    else
      @events_this_month
    end
  end
end
