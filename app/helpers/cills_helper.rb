module CillsHelper

  def display_coauthors
    if @cill.coauthors.blank?
    else
      "Co-authors:"
    end
  end

  def display_sponsors
    if @cill.sponsors.blank?
    else
      "Sponsors:"
    end
  end

  def display_cosponsors
    if @cill.cosponsors.blank?
    else
      "Co-Sponsors:"
    end
  end

  def display_advisors
    if @cill.advisors.blank?
    else
      "Advisors:"
    end
  end

end
