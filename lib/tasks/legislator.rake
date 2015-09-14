require_relative "../get_legislators"


namespace :legislator do

  desc "Loads legislator data from IGA API"
  task :info_load, [:session] => :environment do |task, args|

      legs = LegislatorGrabber.new
      if args.session.blank?

        data_limit = 2013
        session = 2015
    
        until session == data_limit

          legs.leg_grab(session)
          legs.cill_grab(session)

          session = session - 1

        end



      else

        legs.leg_grab(args.session)
        legs.cill_grab(args.session)

      end

  end

end
