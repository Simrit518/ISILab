package com.isilab.tool;

import com.isilab.entity.NewsEntity;
import org.json.JSONArray;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Simrit on 2017/7/27.
 */
public class StrToJson {
    public static String allnewstojson(List<NewsEntity> news){
        List<List<String>> list =new ArrayList<>();
        for(NewsEntity e:news){
            List<String> temp=new ArrayList<>();
            temp.add(String.valueOf(e.getTitle()));
            temp.add(String.valueOf(e.getContent()));
            list.add(temp);
        }
        JSONArray jsonArray=new JSONArray(list);
        return jsonArray.toString();
    }
}
