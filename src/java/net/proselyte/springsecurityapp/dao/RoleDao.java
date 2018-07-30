package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.Role;

public interface RoleDao extends JpaRepository<Role,Long>{
    Role getOne(long l);
}
