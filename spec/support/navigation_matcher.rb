
def should_header_have_navigation_menu(header, name, url)
  header.should have_selector('nav', :id => 'top_bar') do |nav|
    nav.should have_selector('ul') do |ul|
      ul.should have_selector('li') do |li|
        li.should have_selector('a', :href => url, :content => name)
      end
    end
  end
end