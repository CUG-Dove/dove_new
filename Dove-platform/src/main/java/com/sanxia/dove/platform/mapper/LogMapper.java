/**
 * Project Name:Dove-platform
 * File Name:LogMapper.java
 * package com.sanxia.dove.platform.service;
 * Date:2018年3月7日 下午14:03
 *
 */
package com.sanxia.dove.platform.mapper;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

/**
 * Description：<br/>
 * Date:2018年3月7日 下午14:03
 *
 * @author ly
 * @version
 * @see
 */
public interface LogMapper {

    /**
     *
     * @param params
     * @return
     */
    List<Map<String, Object>> findLogs(Map<String, Object> params);

    /**
     *
     * @param userId 用户ID
     * @param memberId 所属会员
     * @param message 修改信息
     * @param model 操作模块
     * @param now 时间戳
     * @return
     */
    int insertLog(Long userId, Long memberId, String message, String model, Timestamp now);

}
