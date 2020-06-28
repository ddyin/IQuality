package com.ddyin.iq.data.shard;

import org.apache.commons.lang3.StringUtils;

/**
 * @author ddyin
 * @Description
 * @date 2019/11/6 10:21
 */
public class ShardHelper {

    private static int getShardingNum(String key, int tableNum) {
        int code = 0;

        for(int i = 0; i < key.length(); i += 2) {
            code *= 16777619;
            code ^= key.charAt(i);
        }

        return Math.abs(code) % tableNum;
    }

    public static ShardInfo getShardInfo(String key, int dbNum, int tableNum) {
        ShardInfo shardInfo = new ShardInfo();
        int shardNum = getShardingNum(key, tableNum * dbNum);
        int table = shardNum / dbNum;
        shardInfo.setTableName((table + 1) + StringUtils.EMPTY);
        if (dbNum != 1){
            int db = shardNum % dbNum;
            shardInfo.setDbName((db + 1) + StringUtils.EMPTY);
        }else {
            shardInfo.setDbName("1");
        }
        return shardInfo;
    }

}
