package org.hj.controller;

import org.hj.model.LoginVO;
import org.hj.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    LoginService loginService;

    // 로그인 페이지 매핑
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        System.out.println("aaaa");
        return "shop_login";
    }

    // 로그인 처리
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("id") String id, @RequestParam("password") String password, HttpSession session, RedirectAttributes redirectAttributes) {
        LoginVO loginVO = new LoginVO();
        loginVO.setId(id);
        loginVO.setPassword(password);

        LoginVO member = loginService.login(loginVO);

        if (member != null) {
            session.setAttribute("login", member); // 세션에 로그인 정보 저장
            return "redirect:/loginco";
        } else {
            redirectAttributes.addFlashAttribute("errorMessage", "Invalid username or password");
            return "redirect:/login";
        }
    }

 // 사용자 정보 페이지 매핑
    @RequestMapping(value = "/loginco", method = RequestMethod.GET)
    public String userInfo(HttpSession session, Model model) {
        LoginVO loginResult = (LoginVO) session.getAttribute("login");

        if (loginResult != null) {
            model.addAttribute("loginUser", loginResult.getName()); // 사용자 이름을 모델에 추가
            model.addAttribute("loginUserID", loginResult.getId());
            return "loginco"; // 로그인된 사용자의 정보를 표시할 페이지로 이동
        } else {
            return "redirect:/login"; // 로그인되지 않은 경우 다시 로그인 페이지로 리다이렉트
        }
    }


    // 로그아웃 처리
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.invalidate(); // 세션 무효화
        return "redirect:/login";
    }
    
    @RequestMapping("/naver.do")
    public String naver() {
        return "naver_login"; // 네이버 로그인 화면으로 이동
    }

    @RequestMapping(value = "/callback", method = RequestMethod.GET)
    public String callBack(HttpServletRequest request) {
        String userName = (String) request.getAttribute("loginUser");
        HttpSession session = request.getSession(); // 세션 객체 가져오기
        if (userName != null) {
            session.setAttribute("loginUser", userName);
        }
        return "loginco"; // 네이버 로그인 콜백 처리 페이지로 이동
    }
}
