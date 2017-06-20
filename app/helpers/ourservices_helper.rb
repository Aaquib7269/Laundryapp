module OurservicesHelper

def abc_select(ourservice)
  options = {}
  options['Active'] = 1 if :a == 1
  options['InActive'] = 2 if :a == 2
  ourservice.select :a_id, options
end

end
