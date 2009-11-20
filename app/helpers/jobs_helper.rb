module JobsHelper
  def format_duration(time)
    time = time.abs.seconds
    content_tag :span, :class => "timestamp" do
      # case time
      #        when nil       then '-'
      #        when 0...60    then "%0.02fs" % time
      #        when 60...3600 then "%dm%02ds" % [time / 60, (time % 60).round]
      #        else                "%dh%02dm%02ds" % [time / 3600, (time % 3600) / 60, (time % 60).round]
      #      end 
      time
    end
  end
end