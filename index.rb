require 'active_support'

ActiveSupport::Dependencies.autoload_paths = [
  'app/',
  'app/entities',
  'config/'
]

obj = FirstProblem.new 
obj.start