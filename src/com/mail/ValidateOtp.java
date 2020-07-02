package com.mail;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Prachi
 */
@WebServlet("/out")
public class ValidateOtp  extends HttpServlet{
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException,NullPointerException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		
		String otpmailed = (request.getParameter("otp"));
                 HttpSession sess=request.getSession();
                String otpg =sess.getAttribute("otpg").toString();
                System.out.print( " Otp fetched by 2nd servlet "+otpg);
                if(otpg.equals(otpmailed))
                {
                  out.print("Correct");
                }
                else
                {
                    out.print("Incorrect");
                }
    
}
}
