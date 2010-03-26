module IceCube

  class SecondlyRule < Rule

    # Determine whether this rule occurs on a give date.
    def occurs_on?(date, start_date)
      #make sure we're in a proper interval
      day_count = date - start_date
      day_count % @interval == 0
    end

    def to_ical 
      'FREQ=SECONDLY' << to_ical_base
    end
        
    def to_s
      to_ical
    end
        
    protected
    
    def default_jump(date)
      date + 1
    end
        
  end

end
