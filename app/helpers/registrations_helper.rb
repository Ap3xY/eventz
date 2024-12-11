module RegistrationsHelper
  def register_or_sold_out(event)
    if event.sold_out?
      content_tag :span, "Sold Out!", class: "inline-block py-2 px-4 bg-gray-500 text-white rounded-md cursor-not-allowed"
    else
       link_to "Register!", new_event_registration_path(event), class: "inline-block py-2 px-4 bg-green-600 hover:bg-green-700 text-white rounded-md transition-colors duration-200"
    end
  end
end
