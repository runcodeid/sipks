module ActionPlansHelper
    def mode_view year,month,resource="Action Plan Validation Tambah"

        date_start= Date.new(year.to_i,month.to_i)
        date_end = Date.new(year.to_i,month.to_i,-1)

        date_now = Date.today

        case resource
        when "b04"
            return is_form date_start,date_end,date_now
        when "b08"
            return is_form date_start,date_end,date_now
        when "b12" 
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
end
