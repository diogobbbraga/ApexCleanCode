public class CleanCode_Indentation {
    public final String CIRCLE = 'circle';
    public final String SQUAR = 'squar';
    public final String RECTANGLE = 'rectangle';
    public final Decimal PI = 3.14 ;
	public Decimal r;
    public Decimal x;
    public Decimal y;
    public String type;
    
public   Decimal getArea ()
{
    return type == CIRCLE?PI * r*r:type != SQUAR ?type==RECTANGLE?
    x*y: null: x*x;
}

    public Decimal calculateArea() {
        if(type == CIRCLE) {
            return PI * r * r;
        } else if(type == SQUAR) {
            return x * x;
        } else if(type == RECTANGLE) {
            return x * y;
        } else {
            return null;
        }
	}
    
}