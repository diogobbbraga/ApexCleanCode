public class CleanCode_Parameters {

    public static Decimal getArea(Decimal x, Decimal y, Decimal r, String type) {
        if(type == 'CIRCLE') {
            return 3.14 * r * r;
        } else if(type == 'SQUAR') {
            return x * x;
        } else if(type == 'RECTANGLE') {
            return x * y;
        } else {
            return null;
        }
    }
    
    public class Shape {
        public Decimal r;
        public Decimal x;
        public Decimal y;
        public String type;
        
        public Decimal getArea() {
            if(type == 'CIRCLE') {
                return 3.14 * r * r;
            } else if(type == 'SQUAR') {
                return x * x;
            } else if(type == 'RECTANGLE') {
                return x * y;
            } else {
                return null;
            }
        }
    }
    
    public interface IShape {
        Decimal getArea();
    }

    public class Circle implements IShape {
        public Decimal r;
        public Decimal getArea() {
            return 3.14 * r * r;
        }
    }
    
    public class Squar implements IShape {
        public Decimal x;
        public Decimal getArea() {
            return x * x;
        }
    }
    
    public class Rectangle implements IShape {
        public Decimal x;
        public Decimal y;
        public Decimal getArea() {
            return x * y;
        }
    }
    
    
}