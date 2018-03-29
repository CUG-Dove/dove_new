/**
 * Project Name:Dove-platform
 * File Name:LogService.java
 * package com.sanxia.dove.platform.service;
 * Date:2018年3月7日 下午14:20
 *
 */
package com.sanxia.dove.platform.service;

import com.sanxia.dove.common.core.dto.Page;

import java.util.Map;

/**
 * Description:<br/>
 * Date:2018年3月7日 下午14:20 <br/>
 *
 * @author ly
 * @version
 * @see
 */
public interface LogService {

    /**
     *
     * @param start     开始index
     * @param length    长度
     * @param startDate 开始日期
     * @param endDate   结束日期
     * @param username  用户名
     * @param optType   选择类型
     * @return  page对象
     */
    Page<Map<String, Object>> findLogsPage(int start, int length, String startDate, String endDate, String username,
                                           String optType);
    /**
     * 管理员操作记录 Description:<br/>
     */
    void addLog(Long userId, Long member, String message, String model);
}
