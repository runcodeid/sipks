module ApplicationHelper
    def mode_view year,month,year_month_now,resource

        date_start= Date.new(year.to_i,month.to_i)
        date_end = Date.new(year.to_i,month.to_i,-1)

        date_now = year_month_now

        case resource
        when "b04"
            return is_form date_start,date_end,date_now
        when "b08"
            return is_form date_start,date_end,date_now
        else
            return is_form date_start,date_end,date_now
        end


    end

    private

    def is_form date_start,date_end,date_now
        if ((date_now >= date_start) && (date_now <= date_end))
            true
        else
            false
        end
    end

    def resource_name
       :user
    end

    def resource
      @resource ||= User.new
    end

    def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
    end
end
