After('@logout') do
    find('.navbar a[href*=dropdown]').click
    find('.navbar a[href$=logout]').click
end

