class DashboardCityPolicy < ApplicationPolicy
    def index?
        check_access("dashboard_city","index")
    end

    def create?
        check_access("dashboard_city","create")
    end

    def new?
        check_access("dashboard_city","new")
    end

    def show?
        check_access("dashboard_city","show")
    end

    def update?
        check_access("dashboard_city","update")
    end

    def destroy?
        check_access("dashboard_city","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
