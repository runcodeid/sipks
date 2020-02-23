class DashboardPolicy < Struct.new(:user, :dashboard)
    def user?
        check_access("dashboard","user")
    end

    def admin?
        check_access("dashboard","admin")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
