class PermissionPolicy < ApplicationPolicy
    def index?
        check_access("permission","index")
    end

    def create?
        check_access("permission","create")
    end

    def new?
        check_access("permission","new")
    end

    def show?
        check_access("permission","show")
    end

    def update?
        check_access("permission","update")
    end

    def destroy?
        check_access("permission","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
