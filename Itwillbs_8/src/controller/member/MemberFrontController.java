package controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.member.MemberLogoutAction;
import action.member.MemberModifyAction;
import action.member.MemberModifyFormAction;
import action.member.MemberMypageAction;
import action.member.MemberPassProAction;
import action.member.api.MemberGoogleKakaoLoginAction;
import action.member.api.MemberNaverLoginAction;
import action.member.MemberJoinProAction;
import action.member.ControlMemberListAction;
import action.member.MemberDeleteProAction;
import action.member.MemberDupCheckAction;
import action.member.MemberLoginProAction;
import vo.ActionForward;

@WebServlet("*.mo")
public class MemberFrontController extends HttpServlet {

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		ActionForward forward = null;
		Action action = null;
		String command = request.getServletPath();

		if (command.equals("/MemberLoginForm.mo")) {
			forward = new ActionForward();
			forward.setPath("/member/login.jsp");
		} else if (command.equals("/MemberLoginPro.mo")) {
			forward = new ActionForward();

			action = new MemberLoginProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberJoinPro.mo")) {
			action = new MemberJoinProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberJoincom.mo")) {
			forward = new ActionForward();
			forward.setPath("/member/join_complete.jsp");
		} else if (command.equals("/MemberLogout.mo")) {
			action = new MemberLogoutAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberModifyPro.mo")) {
			action = new MemberModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberModifyForm.mo")) {
			action = new MemberModifyFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/MemberPassForm.mo")) {
			forward = new ActionForward();
			forward.setPath("/member/pass_Update.jsp");
		} else if (command.equals("/MemberPassPro.mo")) {
			forward = new ActionForward();

			action = new MemberPassProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/dupCheckForm.mo")) {
			forward = new ActionForward();
			forward.setPath("/member/dupCheck.jsp");
		} else if (command.equals("/dupCheck.mo")) {
			action = new MemberDupCheckAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// -------------?????? ?????? ????????? ??????----------------
		else if (command.equals("/ControlMemberList.mo")) {
			forward = new ActionForward();

			action = new ControlMemberListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// -------------??????????????? ??????----------------
		else if (command.equals("/MemberMypage.mo")) {
			forward = new ActionForward();
			action = new MemberMypageAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// -------------?????? ??????(??????)----------------
		else if (command.equals("/MemberDeleteForm.mo")) {
			forward = new ActionForward();
			forward.setPath("/member/delete.jsp");
		} else if (command.equals("/MemberDeletePro.mo")) {
			forward = new ActionForward();

			action = new MemberDeleteProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------- ????????? ????????? ??? json?????? ?????? ?????? ??????----------
		else if (command.equals("/MemberNaverLogin.mo")) {
			forward = new ActionForward();

			action = new MemberNaverLoginAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------- ?????? ????????? ??? json?????? ?????? ?????? ??????----------
		else if (command.equals("/MemberGoogleKakaoLogin.mo")) {
			forward = new ActionForward();

			action = new MemberGoogleKakaoLoginAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// ------------??????????????? ????????? ????????? ??????----------------
		if (forward != null) {

			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}

		// ------------??????????????? ????????? ????????? ??????----------------

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

}
