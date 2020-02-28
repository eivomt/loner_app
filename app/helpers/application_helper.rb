module ApplicationHelper
  def start_time_humanized(event)
    diff = distance_of_time_in_words(event.time, Time.now)

    text = event.time > Time.now ? "In #{diff}" : "#{diff} ago"

    content_tag(:span, text)
  end
end
