package cn.hjl.ssm.service.impl;

import cn.hjl.ssm.dao.SysLogDao;
import cn.hjl.ssm.domain.SysLog;
import cn.hjl.ssm.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SysLogServiceImpl implements SysLogService {
    @Autowired
    private SysLogDao sysLogDao;
    @Override
    public void Save(SysLog sysLog) throws Exception {
        sysLogDao.save(sysLog);
    }
}
