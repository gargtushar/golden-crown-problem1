require 'active_support'
require 'byebug'

ActiveSupport::Dependencies.autoload_paths = [
  'app/',
  'app/entities',
  'config/'
]

obj = FirstProblem.new 
obj.start