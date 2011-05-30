# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def yes_or_no(val)
    return 'Yes' if !val.blank? && val
    return 'No'
  end

  def truncate_words(text, length, end_string = ' …')
    words = text.split()
    words[0..(length-1)].join(' ') + (words.length > length ? end_string : '')
  end

  def get_site_text(key)
    st = SiteContent.get_by_text_key(key)
    if st != nil 
      return st.description
    end
    return " "
  end

end
