module LegislatorsHelper

  def legislators15
    if @legislators15.empty?
    else
      render partial: 'legislators/legislators15'
    end
  end

  def legislators14
    if @legislators14.empty?
    else
      render partial: 'legislators/legislators14'
    end
  end

end
