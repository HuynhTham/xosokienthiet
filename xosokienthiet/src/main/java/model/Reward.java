package model;

import lombok.*;

import java.sql.Date;

@Getter
@Setter
@AllArgsConstructor
@ToString
@NoArgsConstructor

public class Reward {
    private int id;
    private String special_prize;
    private String eighth_prize;
    private String seventh_prize;
    private String sixth_prize;
    private String fifth_prize;
    private String fourth_prize;
    private String third_prize;
    private String second_prize;
    private String first_prize;
    private Date date;
    private String type;

    public int getId() {
        return id;
    }

    public String getSpecial_prize() {
        return special_prize;
    }

    public String getEighth_prize() {
        return eighth_prize;
    }

    public String getSeventh_prize() {
        return seventh_prize;
    }

    public String getSixth_prize() {
        return sixth_prize;
    }

    public String getFifth_prize() {
        return fifth_prize;
    }

    public String getFourth_prize() {
        return fourth_prize;
    }

    public String getThird_prize() {
        return third_prize;
    }

    public String getSecond_prize() {
        return second_prize;
    }

    public String getFirst_prize() {
        return first_prize;
    }

    public Date getDate() {
        return date;
    }

    public String getType() {
        return type;
    }
}
