/**
 * Project Name:Dove-platform
 * File Name:LogServiceImpl.java
 * package com.sanxia.dove.platform.service;
 * Date:2018年3月7日 下午14:25
 *
 */

package com.sanxia.dove.platform.service.impl;

import com.sanxia.dove.common.core.dto.Page;
import com.sanxia.dove.platform.mapper.LogMapper;
import com.sanxia.dove.platform.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.util.Map;
import java.util.logging.LogManager;

/**
 *
 */
@Service
@Transactional
public class LogServiceImpl implements LogService{

    @Autowired
    private LogMapper logMapper;


    @Override
    public Page<Map<String, Object>> findLogsPage(int start, int length, String startDate, String endDate,
                                                  String username, String optType) {
        return null;
    }

    /**
     *  添加日志信息
     */
    @Override
    public void addLog(Long userId, Long member, String message, String model) {
        Timestamp now = new Timestamp(System.currentTimeMillis());
        logMapper.insertLog(userId, member, message, model, now);
    }
}
