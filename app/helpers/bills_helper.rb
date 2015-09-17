module BillsHelper

  def display_coauthors
    if @bill.coauthors.blank?
    else
      "Co-authors:"
    end
  end

  def display_sponsors
    if @bill.sponsors.blank?
    else
      "Sponsors:"
    end
  end

  def display_cosponsors
    if @bill.cosponsors.blank?
    else
      "Co-Sponsors:"
    end
  end

  def display_advisors
    if @bill.advisors.blank?
    else
      "Advisors:"
    end
  end

  def index_logic
    if params[:search_bill]
      render partial: 'bills/bill_search_results'
    else
      render partial: 'bills/bills'
    end
  end

end
