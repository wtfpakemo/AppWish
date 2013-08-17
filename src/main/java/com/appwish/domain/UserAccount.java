package com.appwish.domain;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooMongoEntity
@RooJson(deepSerialize = true)
public class UserAccount {

    /**
     */
    private String name;

    /**
     */
    private String email;

    /**
     */
    private String dateReg;

    public void setCurrentDate() {
        DateFormat dateFormat = new SimpleDateFormat("EEE, MMM d, yyyy - h:mm a");
        //get current date time with Date()
        Date cDate = new Date();
        this.dateReg = dateFormat.format(cDate).toString();
    }
}
