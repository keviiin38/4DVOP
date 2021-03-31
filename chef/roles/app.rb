name "app"
run_list "recipe[nginx]", "recipe[haproxy]"