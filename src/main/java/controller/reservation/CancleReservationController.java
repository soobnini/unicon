package controller.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.Reservation;
import model.dao.ReservationDAO;

public class CancleReservationController implements Controller {

	ReservationDAO reservationDAO = new ReservationDAO();

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		// 로그인 여부 확인
		// 후에 취합했을 때 주석 풀 예정 -> 로그인 안 했으면 다시 게임 예약 페이지로 돌아감!
		/*
		 * if (!UserSessionUtils.hasLogined(req.getSession())) { return
		 * "redirect:/user/login/form"; // login form 요청으로 redirect }
		 */

		// String gameId = req.getParameter("gameId");
		String gameId = "1"; // 임시
		String userId = "0"; // 임시

		try {
			// 나중에 Login 구현되면 그 안으로 들어갈 예정
			boolean isReservate = reservationDAO.isReservate(gameId, userId); // DB에서 user가 게임 예약한 기록 확인
			if (isReservate) {
				int result = reservationDAO.removeByUserIdAndGameId(gameId, userId);
			}
		} catch (Exception e) {
			return "redirect:/";
		}

		return "redirect:/game"; // 게임 예약 페이지로 이동
	}
}