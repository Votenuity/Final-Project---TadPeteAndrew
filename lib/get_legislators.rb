class LegislatorGrabber

  require "json"


    # Takes an endpoint and spits out Hash with symbols all the way through
  def parsed(end_point)
    response = hparty(end_point)
    parsed = parse_me(response).deep_symbolize_keys
  end

  # Makes API call to IGA website for JSON data
  def hparty(end_point)

    HTTParty.get(end_point,
      :headers => {"Accept" => "application/vnd.myiga.v1+json",
      "Authorization" => ENV["iga_token"]},
      :verify => false)

  end

  # Turns JSON response into array of hashes all the way through
  def parse_me(json_obj)

    # Error handling remnant
    begin
      puts json_obj.inspect
      JSON.parse(json_obj)
    rescue JSON::ParserError, TypeError => e
      []
    end

  end

  # This group gets the URL for the picture of the Legislator

  # Conditions link for dynamic URL creation
  def remove_front_of_url(link)

    link.slice!(0..17)
    link

  end

  # Creates URL for database store
  def leg_pic_actual_url(cur_session, link)

    "http://iga.in.gov/legislative/#{cur_session}/portraits/legislator_#{remove_front_of_url(link)}"

  end

  # This will create the Legislators and place them in the database
  def leg_grab(cur_session)

    # Grabs JSON from API, using only endpoint, parses in to array of hashes
    leg_hash = parsed("https://api.iga.in.gov/#{cur_session}/legislators?per_page=160")


    # Assigns each house member to a spot in the database
    leg_hash[:items].each do |house|

      # Removes bad data from stream

      next if house[:link] == "/2014/legislators/timothy_harman_1112"

      # All API Calls

      leg_hash_detail = parsed("https://api.iga.in.gov#{house[:link]}")
      #
      # house_hash_detail_bills = parsed("https://api.iga.in.gov#{leg_hash_detail[:bills][:link]}")
      #
      # house_hash_detail_bills_authored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:authored][:link]}")
      # house_hash_detail_bills_co_authored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:coauthored][:link]}")
      # house_hash_detail_bills_sponsored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:sponsored][:link]}")
      # house_hash_detail_bills_co_sponsored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:cosponsored][:link]}")
      #
      # all_bills_session = parsed("https://api.iga.in.gov/#{cur_session}/bills")
      #
      # all_bills_session_details = parsed("https://api.iga.in.gov/#{cur_session}/bills/#{all_bills_session[:items][:link]}")

      # Creates Legislators from API stream

      Legislator.create(session: cur_session,
                        # position_title: house[:position_title],
                        # firstName: house[:firstName],
                        # lastName: house[:lastName],
                        # party: house[:party],
                        # link: house[:link],
                        # fullName: house[:fullName],
                        # chamber: leg_hash_detail[:chamber][:name],
                        # committees: leg_hash_detail[:committees],
                        # bill_authored: house_hash_detail_bills_authored[:items],
                        # bill_co_authored: house_hash_detail_bills_co_authored[:items],
                        # bill_sponsored: house_hash_detail_bills_sponsored[:items],
                        # bill_co_sponsored: house_hash_detail_bills_co_sponsored[:items],
                        # leg_pic_url: leg_pic_actual_url(cur_session, house[:link])
                        )


    end

  end

  def bill_grab(cur_session)

    all_bills_hash = parsed("https://api.iga.in.gov/#{cur_session}/bills")

    all_bills_hash[:items].each do |item|

      all_bills_session_details = parsed("https://api.iga.in.gov/#{item[:link]}")

      Bill.create(session: all_bills_session_details[:latestVersion][:year],
                        title: all_bills_session_details[:latestVersion][:title],
                        shortDescription:all_bills_session_details[:latestVersion][:shortDescription],
                        billName: all_bills_session_details[:latestVersion][:billName],
                        originChamber: all_bills_session_details[:originChamber],
                        currentChamber: all_bills_session_details[:currentChamber],
                        type: all_bills_session_details[:type],
                        authors: all_bills_session_details[:latestVersion][:authors],
                        coauthors: all_bills_session_details[:latestVersion][:coauthors],
                        sponsors: all_bills_session_details[:latestVersion][:sponsors],
                        cosponsors: all_bills_session_details[:latestVersion][:cosponsors],
                        advisors: all_bills_session_details[:latestVersion][:advisors],
                        link: all_bills_session_details[:link],
                        digest: all_bills_session_details[:latestVersion][:digest]
                        )

    end

  end

end
