module ApplicationHelper
    def display_notice
        content_tag(:p, notice, calss: "notice") if notice.present?
    end

    def display_alert
        content_tag(:p, alert, calss: "alert") if alert.present?
    end

    def display_right_navbar_options
        if user_signed_in? 
            render 'dropdown'
        else
            render 'login_buttons'
        end
    end

    def display_active_class(link_page)
        "active" if current_page?(link_page)
    end
end
