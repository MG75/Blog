module ApplicationHelper
    def display_notice
        content_tag(:p, notice, calss: "notice") if notice.present?
    end

    def display_alert
        content_tag(:p, alert, calss: "alert") if alert.present?
    end
end
