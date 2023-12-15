package dao;

import model.Date;
import model.LotteryResult;
import model.Province;
import model.Reward;
import org.jdbi.v3.core.Handle;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class DaoResult {
    public List<LotteryResult> getData(String type, LocalDate date) {
        try (Handle handle = DBContext.connectDataMart().open()) {
            String query = "SELECT r.sk,r.id,r.id_reward,r.id_date,r.id_province,r.special_prize,r.first_prize,r.second_prize,r.third_prize,r.fourth_prize,r.fifth_prize,r.sixth_prize,r.seventh_prize,r.eighth_prize FROM lottery_result r JOIN date d ON r.id_date = d.id JOIN reward re ON re.id = r.id_reward WHERE re.type = ? AND d.full_date = ?;";
            List<LotteryResult> results = handle.createQuery(query).bind(0, type).bind(1, date).mapToBean(LotteryResult.class).list();
            return results;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<LotteryResult> getAllData(LocalDate date) {
        try (Handle handle = DBContext.connectDataMart().open()) {
            String query = "SELECT r.sk,r.id,r.id_reward,r.id_date,r.id_province,r.special_prize,r.first_prize,r.second_prize,r.third_prize,r.fourth_prize,r.fifth_prize,r.sixth_prize,r.seventh_prize,r.eighth_prize,p.name,p.region,d.full_date FROM lottery_result r JOIN date d ON r.id_date = d.id JOIN reward re ON re.id = r.id_reward JOIN province p ON r.id_province=p.id WHERE d.full_date =?;";
            List<LotteryResult> results = handle.createQuery(query).bind(0, date).
                    mapToBean(LotteryResult.class).
                    list();
            return results;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public Province findProvinceById(int id) {
        try (Handle handle = DBContext.connectDataMart().open()) {
            String query = "SELECT * FROM province WHERE id = ?";
            Province result = handle.createQuery(query)
                    .bind(0, id)
                    .mapToBean(Province.class).first();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public Date findDateById(int id) {
        try (Handle handle = DBContext.connectDataMart().open()) {
            String query = "SELECT * FROM date WHERE id = ?";
            Date result = handle.createQuery(query)
                    .bind(0, id)
                    .mapToBean(Date.class).first();
            System.out.println("Result Set Metadata: " + result);

            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public Reward findReWardById(int id) {
        try (Handle handle = DBContext.connectDataMart().open()) {
            String query = "SELECT * FROM reward WHERE id = ?";
            Reward result = handle.createQuery(query)
                    .bind(0, id)
                    .mapToBean(Reward.class).first();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public static void main(String[] args) {
          List<LotteryResult> listResultToday = new ArrayList<LotteryResult>();
        listResultToday = new DaoResult().getAllData(LocalDate.now().minusDays(1));
        System.out.println(listResultToday.toString());

    }
}

