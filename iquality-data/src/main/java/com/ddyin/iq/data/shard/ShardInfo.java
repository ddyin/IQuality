package com.ddyin.iq.data.shard;

/**
 * @author ddyin
 * @Description
 * @date 2019/11/6 10:21
 */
public class ShardInfo {
    private String dbName;
    private String tableName;

    public ShardInfo() {
    }

    public String getDbName() {
        return this.dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    public String getTableName() {
        return this.tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }
}
