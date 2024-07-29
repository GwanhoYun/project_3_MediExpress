package org.hj.controller;

import java.text.SimpleDateFormat;
import java.util.List;
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
        boardService.addBoard(board);
        return "redirect:/boards/all";
    }

    @GetMapping("/order/{orderNo}")
    public String getOrderDetails(@PathVariable("orderNo") int orderNo, Model model, HttpSession session) {
        // 로그인 정보 가져오기
        LoginVO loginResult = (LoginVO) session.getAttribute("login");
        if (loginResult != null) {
            model.addAttribute("loginUser", loginResult.getName());
        } else {
            model.addAttribute("loginUser", "로그인 필요");
        }

        // 주문 정보 가져오기
        MeBoardVO order = boardService.getOrder(orderNo);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String formattedDate = dateFormat.format(order.getO_date());

        model.addAttribute("board", order);
        model.addAttribute("formattedDate", formattedDate);

        return "orderDetails";
    }

    @GetMapping("/boardDetail")
    public String getBoardById(@RequestParam int o_no, HttpSession session, Model model) {
        // 로그인 정보 가져오기
        String loginUser = (String) session.getAttribute("loginUser");
        if (loginUser != null) {
            model.addAttribute("loginUser", loginUser);
        } else {
            System.out.println("로그인 정보가 세션에 없습니다.");
        }

        // 게시물 정보 가져오기
        MeBoardVO board = boardService.getBoardById(o_no);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String formattedDate = dateFormat.format(board.getO_date());

        model.addAttribute("board", board);
        model.addAttribute("formattedDate", formattedDate);

        return "boardDetail";
    }

    @GetMapping("/all")
    public String getAllBoards(Model model) {
        List<MeBoardVO> boards = boardService.getAllBoards();
        model.addAttribute("boards", boards);
        return "list"; // list.jsp로 렌더링
    }

    @GetMapping("/writeForm")
    public String writeForm() {
        return "write"; // write.jsp로 렌더링
    }

    @GetMapping("/ss")
    public String getTransactionStatement(@RequestParam int o_no, Model model, HttpSession session) {
        // 로그인 정보 가져오기
        LoginVO loginResult = (LoginVO) session.getAttribute("login");
        if (loginResult != null) {
            model.addAttribute("loginUser", loginResult.getName());
        } else {
            model.addAttribute("loginUser", "로그인 필요");
        }

        // 주문 정보 가져오기
        MeBoardVO board = boardService.getBoardById(o_no);
        model.addAttribute("board", board);
        return "ss"; // ss.jsp로 렌더링
    }
}
