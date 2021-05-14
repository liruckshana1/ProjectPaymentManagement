package com;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Payment;

/**
 * Servlet implementation class PaymentAPI
 */
@WebServlet("/PaymentAPI")
public class PaymentAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Payment payObj = new Payment();
		String output = payObj.insertPayment(request.getParameter("Name"),
				request.getParameter("CardType"),
				request.getParameter("CardNo"),
				request.getParameter("cvv"),
				request.getParameter("EXP_Month"),
				request.getParameter("EXP_Year"),
				request.getParameter("Amount"),
				request.getParameter("PaymentDate"));
				
		response.getWriter().write(output);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException
	{
		Payment payObj = new Payment();
		Map para = getParasMap(request);
		
		String output = payObj.updatePayment(para.get("PaymentID").toString(),
				para.get("Name").toString(),
				para.get("CardType").toString(),
				request.getParameter("CardNo"),
				request.getParameter("cvv"),
				request.getParameter("EXP_Month"),
				request.getParameter("EXP_Year"),
				request.getParameter("Amount"),
				para.get("PaymentDate").toString());
		
		response.getWriter().write(output);
	}
	
	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Payment payObj = new Payment();
		Map para = getParasMap(request);
		String output = payObj.deletePayment(para.get("PaymentID").toString());
		response.getWriter().write(output);
	}
	
	//Convert request parameters to a Map
			private static Map getParasMap(HttpServletRequest request)
			{
			Map<String, String> map = new HashMap<String, String>();
			try
			{
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			String queryString = scanner.hasNext() ?
			scanner.useDelimiter("\\A").next() : "";
			scanner.close();
			String[] params = queryString.split("&");
			for (String param : params)
			{ 
			String[] p = param.split("=");
			map.put(p[0], p[1]);
			}
			}
			catch (Exception e)
			{
			}
			return map; 
			} 

}
