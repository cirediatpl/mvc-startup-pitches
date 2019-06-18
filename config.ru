require './config/environment'

# require_relative './app'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end



# How do we connect the PitchesController here?
# did above with require_relative

use PitchesController
run ApplicationController
