package controller;

import dao.DaoResult;
import model.LotteryResult;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Index")
public class Index extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException, IOException {

        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DaoResult daoResult = new DaoResult();
        List<LotteryResult> listResultToday = new ArrayList<LotteryResult>();
        List<LotteryResult> southernList = new ArrayList<LotteryResult>();
        List<LotteryResult> centralList = new ArrayList<LotteryResult>();
        List<LotteryResult> northernList = new ArrayList<LotteryResult>();

        try {
            // Retrieve data from the DAO
            listResultToday = daoResult.getAllData(LocalDate.now());
            if (listResultToday.isEmpty()) {
                listResultToday = daoResult.getAllData(LocalDate.now().minusDays(1));
            }
            // Process the retrieved data
            for (LotteryResult l : listResultToday) {

                if (l.getRegion() != null && l.getRegion().trim().equals("Miền Nam")) {
                    southernList.add(l);
                } else if (l.getRegion() != null && l.getRegion().trim().equals("Miền Bắc")) {
                    northernList.add(l);
                } else if (l.getRegion() != null && l.getRegion().trim().equals("Miền Trung")) {
                    centralList.add(l);
                }
            }

            session.setAttribute("listToday", listResultToday);
            // Set attributes and forward to the JSP
            session.setAttribute("southern", southernList);
            System.out.println(southernList.size());
            System.out.println("southern" + southernList.toString());

            session.setAttribute("northern", northernList);
            System.out.println(northernList.size());
            System.out.println("northern" + northernList.toString());

            session.setAttribute("central", centralList);
            System.out.println(centralList.size());
            System.out.println("central" + centralList.toString());


            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (Exception e) {
            // Handle exceptions (replace with appropriate handling)
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}