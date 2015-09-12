require_relative "../get_legislators"


namespace :legislator do

  desc "Loads legislator data from IGA API"
  task :info_load, [:session] => :environment do |task, args|

      legs = LegislatorGrabber.new

      # legs.leg_grab(args.session)
      legs.cill_grab(args.session)


  end

end
