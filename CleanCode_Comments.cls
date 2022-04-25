public class CleanCode_Comments {
    
    public class EmailSender {
        public void send(Account a) {
            
        }
    }
	
    /***********************************************************************************************
    *  											Itau - 2022
    * 
    * 
    * trigger handler da conta
    * 
    * Autor: Diogo Braga
    * Data: 08/04/2021
    *
    * Autor: <author's name>
    * Data: <dd/MM/yyyy>
    * Descrição: <brief description of the changes. e.g.: method XPTO created>
    ************************************************************************************************/
    public class AccountTriggerHandler extends TriggerHandler {
        /*******************************************************************************************************
        * @description executa o metodo no contexto de before insert da trigger
        * @author Diogo Braga
        * @date 08/04/2021
        * *******************************************************************************************************
        * @param listNew lista de contas em contexto
        * @return void
        * @example N/A
        */
        protected override void beforeInsert(List<SObject> listNew) { 
            for(Account varAccount : (List<Account>) listNew ) { //percorre a lista de contas
                // envia SMS para contas não prospect
                if(varAccount.type == 'Prospect') { 
                	new EmailSender().send(varAccount);
                }//else {
                	// new SmsSender().send(varAccount);
            	//}
            }
        }
        
    }
    
    public class AccountRefacTriggerHandler extends TriggerHandler {
        
        protected override void beforeInsert(List<SObject> listNew) { 
            for(Account varAccount : (List<Account>) listNew ) {
                if(varAccount.type == 'Prospect') {
                	new EmailSender().send(varAccount);
            	}
            }
        }
        
    }
    
    
}