package com.appwish.domain;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooMongoEntity
@RooJson(deepSerialize = true)
public class Comment {

    /**
     */
    @ManyToOne
    private UserAccount userAccount;

    /**
     */
    private String body;

    /**
     */
    private String dateCreated;

    public void setCurrentDate() {
        DateFormat dateFormat = new SimpleDateFormat("EEE, MMM d, yyyy - h:mm a");
        //get current date time with Date()
        Date cDate = new Date();
        this.dateCreated = dateFormat.format(cDate).toString();
    }
}
