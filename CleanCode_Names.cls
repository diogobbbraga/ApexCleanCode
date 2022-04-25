public class CleanCode_Names {    
    
    public class usuario {
        String n;
        date Ano;
        Boolean ComAni = true;
        
        public void Bmessage() {
            if(Ano.day() == system.today().day() && Ano.month() == system.today().month()) {
                system.debug('Olá ' + n + '...!');
            }
        }
    }
    
    public class User {
        public String name;
        public Date birthDay;
        public Boolean isCelebrateBirthday = true;
        
        public void debugBirthdayMessage() {
            if(birthDay.day() == System.today().day() && birthDay.month() == System.today().month()) {
                System.debug('Olá ' + name + '...!');
            }
        }
    }
    
    
}