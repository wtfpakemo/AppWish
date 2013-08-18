package com.appwish.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooMongoEntity
@RooJson(deepSerialize = true)
public class Idea {

    /**
     */
    private String body;

    /**
     */
    private String dateCreated;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Comment> comments = new HashSet<Comment>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Like> likes = new HashSet<Like>();

    /**
     */
    @ManyToOne
    private UserAccount userAccount;

    public void setCurrentDate() {
        DateFormat dateFormat = new SimpleDateFormat("EEE, MMM d, yyyy - h:mm a");
        //get current date time with Date()
        Date cDate = new Date();
        this.dateCreated = dateFormat.format(cDate).toString();
    }

    public void addComment(Comment comment) {
        this.comments.add(comment);
    }

    public void addLikes(Like like) {
        this.likes.add(like);
    }

    /**
     */
    private String title;
}
