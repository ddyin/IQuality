package com.ddyin.iq.web.controller;

import com.ddyin.iq.core.vo.ShardToolInfo;
import com.ddyin.iq.data.shard.ShardHelper;
import com.ddyin.iq.data.shard.ShardInfo;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;

/**
 * @author ddyin
 * @Description
 * @date 2020/5/30 14:18
 */
@Controller
@RequestMapping("/tool")
public class ToolController extends BaseController{

    final Logger log = Logger.getLogger(ToolController.class);

    @RequestMapping(value = "/shard")
    public String index() {
        return "tool/shard";
    }

    @RequestMapping(value = "/yddandzwr")
    public String index2() {
        return "tool/yddandzwr";
    }

    @RequestMapping(value = "/zwr")
    public String index3() {
        return "tool/zwr";
    }

    @RequestMapping(value = "/calShard", method = RequestMethod.POST)
    public String calShard(HttpServletRequest request, Model model){
        try {
            ShardToolInfo shardToolInfo = new ShardToolInfo();
            String key = request.getParameter("key");
            String dbNum = request.getParameter("dbNum");
            String tableNum = request.getParameter("tableNum");
            ShardInfo rst = ShardHelper.getShardInfo(key, Integer.valueOf(dbNum), Integer.valueOf(tableNum));
            shardToolInfo.setKey(key);
            shardToolInfo.setDbNum(dbNum);
            shardToolInfo.setTableNum(tableNum);
            shardToolInfo.setDbNumRst(rst.getDbName());
            shardToolInfo.setTableNumRst(rst.getTableName());
            model.addAttribute("shardToolInfo",shardToolInfo);
        } catch (Exception e) {
            log.error("calShard:" + e.getMessage());
        }
        return "tool/shard";
    }



}
