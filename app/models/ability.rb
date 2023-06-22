class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, :all
    can :access, :rails_admin
    # if user.admin_role?


      # if user && user.admin_role?
            can :manage, MainportalController
            can :manage, :rails_admin
            can :manage, :all
          # end
    # end
 # allow access to dashboard
# if user.slotbooker != nil
  can :manage, SlotbookerController
# end
 # can :access, :rails_admin  # only admin can access Rails Admin
 # can :manage, :dashboard
    if user.chairman_role?
     can :access, :rails_admin
      can :read, :all
    end
    if user.slotbooker = 'media'
      can :access, AnnouncementsController
    end
  end
end
