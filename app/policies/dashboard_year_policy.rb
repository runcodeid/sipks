class DashboardYearPolicy < ApplicationPolicy
    def index?
        check_access("dashboard_year","index")
    end

    def create?
        check_access("dashboard_year","create")
    end

    def new?
        check_access("dashboard_year","new")
    end

    def show?
        check_access("dashboard_year","show")
    end

    def update?
        check_access("dashboard_year","update")
    end

    def destroy?
        check_access("dashboard_year","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
