package cn.hjl.ssm.service;

import cn.hjl.ssm.domain.SysLog;

import java.util.List;

public interface SysLogService {
        void Save(SysLog sysLog) throws Exception;


        List<SysLog> findAll(Integer page, Integer size) throws Exception;
}
