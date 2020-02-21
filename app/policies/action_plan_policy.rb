class ActionPlanPolicy < ApplicationPolicy
    def index?
        check_access("action_plan","index")
    end

    def create?
        check_access("action_plan","create")
    end

    def new?
        check_access("action_plan","new")
    end

    def show?
        check_access("action_plan","show")
    end

    def update?
        check_access("action_plan","update")
    end

    def destroy?
        check_access("action_plan","destroy")
    end

    private

    def check_access resource, action
        RolePermission.check_status(user.role,Permission.check_resource_and_action(resource,action))
    end
end
