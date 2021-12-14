package controller.reservation;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.info.UserSessionUtils;
import model.Company;
import model.Game;
import model.Genre;
import model.Reservation;
import model.User;
import model.dao.CompanyDAO;
import model.dao.GameDAO;
import model.dao.GenreDAO;
import model.dao.ReservationDAO;
import model.service.UserManager;
import model.service.UserNotFoundException;

public class ViewReservationController implements Controller {

	GameDAO gameDAO = new GameDAO();
	CompanyDAO companyDAO = new CompanyDAO();
	GenreDAO genreDAO = new GenreDAO();
	ReservationDAO reservationDAO = new ReservationDAO();

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// �α��� ���� Ȯ��
		// login �� reservation ������ ���η� ���� ��ư �ٲ� �� ���� �ۼ��� ����...
		/*
		 * if (!UserSessionUtils.hasLogined(req.getSession())) { return
		 * "redirect:/user/login/form"; // login form ��û���� redirect }
		 */

		// String gameId = req.getParameter("gameId");
		String gameId = "1"; // �ӽ�
		String userId = "0";	//�ӽ�
		Game game = null;
		Company company = null;
		ArrayList<Genre> genreList = new ArrayList<>();

		try {
			game = gameDAO.findGame(gameId); // ���� ���� �˻�
			company = companyDAO.findCompany(String.valueOf(game.getCompany_id()));

			// ������ �帣 �±� ����Ʈ ����
			String[] tagList = String.valueOf(game.getCategory()).split(",");
			for (int i = 0; i < tagList.length; i++)
				genreList.add(genreDAO.findGenre(tagList[i]));

			// ���߿� Login �����Ǹ� �� ������ �� ����
			boolean isReservate = reservationDAO.isReservate(gameId, userId); // DB���� user�� ���� ������ ��� Ȯ��
			if (isReservate)
				req.setAttribute("reservate", "true");
			else
				req.setAttribute("reservate", "false");
		} catch (Exception e) {
			return "redirect:/";
		}

		req.setAttribute("game", game);
		req.setAttribute("company", company);
		req.setAttribute("genreList", genreList);
		return "/reservation.jsp"; // ���� ���� �������� �̵�
	}
}