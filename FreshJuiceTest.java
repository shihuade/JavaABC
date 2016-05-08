
class FreshJucie {
  
  enum FreshJucieSize {
    SMALL,
	MEDIUM,
	LARGE
  }

  FreshJucieSize size;

}

public class FreshJuiceTest {

	public static void main (String [] args){
      FreshJucie myJucie = new FreshJucie();
	  myJucie.size = FreshJucie.FreshJucieSize.LARGE;

	  System.out.println(myJucie.size);
	}
}

