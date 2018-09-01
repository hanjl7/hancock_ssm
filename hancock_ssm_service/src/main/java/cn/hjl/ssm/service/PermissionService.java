package cn.hjl.ssm.service;

import cn.hjl.ssm.domain.Permission;

import java.util.List;

public interface PermissionService {
    List<Permission> findAll() throws Exception;

    void save(Permission permission)throws Exception;

    List<Permission> findOtherPermission(String roleId) throws Exception;
}
