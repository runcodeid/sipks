class YearPolicy < ApplicationPolicy
    def index?
        check_access("year","index")
    end

    def create?
        check_access("year","create")
    end

    def new?
        check_access("year","new")
    end

    def show?
        check_access("year","show")
    end

    def update?
        check_access("year","update")
    end

    def destroy?
        check_access("year","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
