package org.hj.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.hj.model.LoginVO;
import org.hj.model.MeBoardVO;
import org.hj.service.MeBoardService;

@Controller
@RequestMapping("/boards")
public class MeBoardController {

    @Autowired
    private MeBoardService boardService;

    @PostMapping("/add")
    public String addBoard(@ModelAttribute MeBoardVO board) {
        System.out.println("Adding board: " + board);
        boardService.addBoard(board);
        return "redirect:/boards/all";
    }

    @GetMapping("/orderDetails")
    public String getOrderDetails(@RequestParam("o_no") int o_no,
                                  @RequestParam("p_no") int p_no,
                                  Model model,
                                  HttpSession session) {
        System.out.println("Fetching order details for o_no: " + o_no + " and p_no: " + p_no);

        // 로그인 정보 가져오기
        LoginVO loginResult = (LoginVO) session.getAttribute("login");
        if (loginResult != null) {
            System.out.println("Logged in user: " + loginResult.getName()); // 로그인 이름 출력
            Map<String, String> loginUser = new HashMap<>();
            loginUser.put("id", loginResult.getId());
            loginUser.put("name", loginResult.getName());
            model.addAttribute("loginUser", loginUser); // 모델에 이름과 아이디 추가
        } else {
            System.out.println("No login information in session.");
            model.addAttribute("loginUser", null);
        }

        // 주문 정보 가져오기
        Map<String, Object> params = new HashMap<>();
        params.put("o_no", o_no);
        params.put("p_no", p_no);

        System.out.println("Fetching order with params: " + params);
        MeBoardVO order = boardService.getOrder(params);

        if (order != null) {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String formattedDate = dateFormat.format(order.getO_date());
            model.addAttribute("board", order);
            model.addAttribute("formattedDate", formattedDate);
            System.out.println("Fetched order: " + order);
        } else {
            System.out.println("No order found for the given parameters.");
        }

        return "boardDetail";
    }



   /* @GetMapping("/boardDetail")
    public String getBoardById(@RequestParam int o_no, HttpSession session, Model model) {
        System.out.println("Fetching board details for o_no: " + o_no);

        // 로그인 정보 가져오기
        LoginVO loginResult = (LoginVO) session.getAttribute("login");
        if (loginResult != null) {
            System.out.println("Logged in user: " + loginResult.getName());
            model.addAttribute("loginUser", loginResult.getName());
        } else {
            System.out.println("No login information in session.");
            model.addAttribute("loginUser", "로그인 필요");
        }

        // 게시물 정보 가져오기
        MeBoardVO board = boardService.getBoardById(o_no);
        if (board != null) {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String formattedDate = dateFormat.format(board.getO_date());
            model.addAttribute("board", board);
            model.addAttribute("formattedDate", formattedDate);
            System.out.println("Fetched board: " + board);
        } else {
            System.out.println("No board found with the given o_no.");
        }

        return "boardDetail";
    }*/

    @GetMapping("/all")
    public String getAllBoards(Model model, HttpSession session) {
        System.out.println("Fetching all boards.");

        // 로그인 정보 확인
        LoginVO loginResult = (LoginVO) session.getAttribute("login");
        if (loginResult != null) {
            model.addAttribute("loginUser", loginResult.getName());
            System.out.println("Logged in user: " + loginResult.getName());
        } else {
            System.out.println("No login information in session.");
            model.addAttribute("loginUser", "로그인 필요");
        }

        List<MeBoardVO> boards = boardService.getAllBoards();
        if (boards != null) {
            model.addAttribute("boards", boards);
            System.out.println("Fetched boards: " + boards);
        } else {
            System.out.println("No boards found.");
        }

        return "list"; // list.jsp로 렌더링
    }


    @GetMapping("/writeForm")
    public String writeForm() {
        System.out.println("Displaying write form.");
        return "write"; // write.jsp로 렌더링
    }
    @GetMapping("/ss")
    public String getTransactionStatement(@RequestParam int o_no,
                                          @RequestParam int p_no,
                                          Model model,
                                          HttpSession session) {
        System.out.println("Fetching transaction statement for o_no: " + o_no + " and p_no: " + p_no);

        // 로그인 정보 가져오기
        LoginVO loginResult = (LoginVO) session.getAttribute("login");
        if (loginResult != null) {
            System.out.println("Logged in user: " + loginResult.getName());
            model.addAttribute("loginUser", loginResult); // 객체를 모델에 추가
        } else {
            System.out.println("No login information in session.");
            model.addAttribute("loginUser", new LoginVO()); // Null 방지를 위해 빈 객체 추가
        }

        // 주문 정보 가져오기
        Map<String, Object> params = new HashMap<>();
        params.put("o_no", o_no);
        params.put("p_no", p_no);

        System.out.println("Fetching order with params: " + params);
        MeBoardVO board = boardService.getOrder(params);

        if (board != null) {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String formattedDate = dateFormat.format(board.getO_date());
            model.addAttribute("board", board);
            model.addAttribute("formattedDate", formattedDate);
            System.out.println("Fetched board for transaction statement: " + board);
        } else {
            model.addAttribute("message", "No board found with the given parameters.");
            System.out.println("No board found with the given parameters.");
        }

        return "ss"; // ss.jsp로 렌더링
    }



}
