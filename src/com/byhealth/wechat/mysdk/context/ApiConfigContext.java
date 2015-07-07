
package com.byhealth.wechat.mysdk.context;

import com.byhealth.wechat.mysdk.api.ApiConfig;

import java.util.HashMap;
import java.util.Map;

/**
 * ApiConfig缓存容器 Created by fengjx. Date：2014/12/7 0007
 */
public class ApiConfigContext {

    /**
     * 可修改为memcached管理
     */
    private static volatile Map<String, ApiConfig> apiConfigMap = new HashMap<String, ApiConfig>();

    public static void put(ApiConfig apiConfig) {
        synchronized (apiConfigMap) {
            apiConfigMap.put(apiConfig.createKey(), apiConfig);
        }
    }

    public static void remove(String apiConfigKey) {
        synchronized (apiConfigMap) {
            apiConfigMap.remove(apiConfigKey);
        }
    }

    public static ApiConfig getApiConfigByKey(String configKey) {
        return apiConfigMap.get(configKey);
    }

    public static Map<String, ApiConfig> getApiConfigMap() {
        return apiConfigMap;
    }
}
