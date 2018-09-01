package cn.hjl.ssm.service;

import cn.hjl.ssm.domain.Permission;
import cn.hjl.ssm.domain.Role;

import java.util.List;

public interface RoleService {
    List<Role> findAll() throws Exception;

    void save(Role role);

    void deleteRole(String id) throws Exception;

    List<Role> findOtherRoles(String userId);

    Role findById(String roleId) throws Exception;


    void addPermissionToRole(String roleId, String[] permissionId) throws Exception;
}
