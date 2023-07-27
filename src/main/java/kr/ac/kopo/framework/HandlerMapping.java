package kr.ac.kopo.framework;

import java.util.HashMap;
import java.util.Map;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.controller.CreateAccountController;
import kr.ac.kopo.controller.CreateAccountProcessController;
import kr.ac.kopo.controller.GetItemListController;
import kr.ac.kopo.controller.GetMyAccListController;
import kr.ac.kopo.controller.GetnoticeController;
import kr.ac.kopo.controller.HistoryController;
import kr.ac.kopo.controller.InsertUserController;
import kr.ac.kopo.controller.InsertUserProcessController;
import kr.ac.kopo.controller.KakaoLoginController;
import kr.ac.kopo.controller.LoginController;
import kr.ac.kopo.controller.LoginProcessController;
import kr.ac.kopo.controller.LogoutController;
import kr.ac.kopo.controller.TransactListController;
import kr.ac.kopo.controller.TransactionController;
import kr.ac.kopo.controller.TransactionProcessController;
import kr.ac.kopo.controller.WriteqnaController;
import kr.ac.kopo.controller.WriteqnaProcessController;



public class HandlerMapping {

	private Map<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<>();
	
		mappings.put("/main.do", new MainController());
		
		mappings.put("/kakaologin.do", new KakaoLoginController());
		mappings.put("/login.do", new LoginController());
		mappings.put("/loginProcess.do", new LoginProcessController());
		mappings.put("/logout.do", new LogoutController());

		mappings.put("/memjoin.do", new InsertUserController());
		mappings.put("/insertUserProcess.do", new InsertUserProcessController());
		
		
		
		mappings.put("/createAccount.do", new CreateAccountController());
		mappings.put("/createAccountProcess.do", new CreateAccountProcessController());
		
		mappings.put("/getitemlist.do", new GetItemListController());
		mappings.put("/getMyAcclist.do", new GetMyAccListController());
		
		mappings.put("/history.do", new HistoryController());
		mappings.put("/transaction.do", new TransactionController());
		mappings.put("/transactionProcess.do", new TransactionProcessController());
		mappings.put("/transactList.do", new TransactListController());
		
		mappings.put("/getnotice.do", new GetnoticeController());
		mappings.put("/writeqna.do", new WriteqnaController());
		mappings.put("/writeqnaProcess.do", new WriteqnaProcessController());

		
		
		
		
	}

	public Controller getController(String uri) {
		return mappings.get(uri);
	}
}
