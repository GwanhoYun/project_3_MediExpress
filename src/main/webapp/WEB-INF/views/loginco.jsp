<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.parser.JSONParser" %>

<%
String clientId = "RhYUDtcrGAZKn45AMi7b";
String clientSecret = "tZJcX7bgm9"; 
String code = request.getParameter("code");
String state = request.getParameter("state");
String redirectURI = URLEncoder.encode("http://localhost:8080/callback", "UTF-8");
String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
apiURL += "client_id=" + clientId;
apiURL += "&client_secret=" + clientSecret;
apiURL += "&redirect_uri=" + redirectURI;
apiURL += "&code=" + code;
apiURL += "&state=" + state;
String access_token = "";
String userName = "";

try {
    URL url = new URL(apiURL);
    HttpURLConnection con = (HttpURLConnection) url.openConnection();
    con.setRequestMethod("GET");
    int responseCode = con.getResponseCode();
    BufferedReader br;
    if (responseCode == 200) { // 정상 호출
        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
    } else {  // 에러 발생
        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
    }
    StringBuffer res = new StringBuffer();
    String inputLine;
    while ((inputLine = br.readLine()) != null) {
        res.append(inputLine);
    }
    br.close();
    if (responseCode == 200) {
        // JSON 데이터 파싱
        JSONParser parser = new JSONParser();
        JSONObject jsonObj = (JSONObject) parser.parse(res.toString());

        // Access Token 추출
        access_token = (String) jsonObj.get("access_token");

        // Access Token을 사용하여 사용자 정보 요청
        String apiUrlProfile = "https://openapi.naver.com/v1/nid/me";
        URL urlProfile = new URL(apiUrlProfile);
        HttpURLConnection conProfile = (HttpURLConnection) urlProfile.openConnection();
        conProfile.setRequestMethod("GET");
        conProfile.setRequestProperty("Authorization", "Bearer " + access_token);
        responseCode = conProfile.getResponseCode();
        if (responseCode == 200) {
            br = new BufferedReader(new InputStreamReader(conProfile.getInputStream()));
            res = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                res.append(inputLine);
            }
            br.close();

            // 사용자 정보 파싱
            JSONObject profileObj = (JSONObject) parser.parse(res.toString());
            JSONObject responseObj = (JSONObject) profileObj.get("response");
            userName = (String) responseObj.get("name"); // 사용자 이름 추출

            // 세션에 사용자 이름 저장
            request.getSession().setAttribute("loginUser", userName);

            // JSP 페이지에 사용자 이름을 출력하기 위해 request 객체에도 저장
            request.setAttribute("loginUser", userName);
        } else {
            out.println("사용자 정보 요청 실패. 상태 코드: " + responseCode);
        }
    } else {
        out.println("토큰 요청 실패. 상태 코드: " + responseCode);
    }
} catch (Exception e) {
    e.printStackTrace();
    out.println("예외 발생: " + e.getMessage());
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<p class="welcome-text">
    <c:if test="${not empty loginUser}">
        ${loginUser}님 환영합니다!
    </c:if>
    <c:if test="${empty loginUser}">
        로그인 정보가 없습니다.
    </c:if>
</p>
<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
<a href="/boards/all">모든 게시물 보기</a>
</body>
</html>
