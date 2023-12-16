package model;
import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@AllArgsConstructor
@ToString
@NoArgsConstructor
public class Date {
    private  int id;
    private LocalDate full_date;
    private String day_of_week;
    private String month;
    private String year;

    public void setId(int id) {
        this.id = id;
    }

    public void setFull_date(LocalDate full_date) {
        this.full_date = full_date;
    }

    public void setDay_of_week(String day_of_week) {
        this.day_of_week = day_of_week;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public void setYear(String year) {
        this.year = year;
    }
}
