module SimTeamsHelper
  
  def getYourStaffNameByPositionId (posId)
    @sim_staff = SimStaff.find_by_id(posId, :include => [{:real_staff => :staff_position}])
    if @sim_staff == nil
      @sim_staff_name = "Not Hired"
    else
      @sim_staff_name = @sim_staff.real_staff.name
    end
  end

  def getYourStaffCostByPositionId (posId)
    @sim_staff = SimStaff.find_by_id(posId, :include => [{:real_staff => :staff_position}])
    if @sim_staff == nil
      @sim_staff_name = "--"
    else
      @sim_staff_name = @sim_staff.real_staff.cost
    end
  end


  def getYourTechPartNameByTechPartId (partId)
    @sim_staff = SimTachPart.find_by_id(posId, :include => [{:real_staff => :staff_position}])
    if @sim_staff == nil
      @sim_staff_name = "Not Hired"
    else
      @sim_staff_name = @sim_staff.real_staff.name
    end
  end

  
end
