
//----------------------------------------------------
// The following code was generated by CUP v0.11b beta 20140226
//----------------------------------------------------

/** CUP generated class containing symbol constants. */
public class sym {
  /* terminals */
  public static final int CBRACKET = 6;
  public static final int error = 1;
  public static final int PLUS = 2;
  public static final int EQUAL = 7;
  public static final int NUMBER = 4;
  public static final int MINUS = 3;
  public static final int OBRACKET = 5;
  public static final int EOF = 0;
  public static final String[] terminalNames = new String[] {
  "EOF",
  "error",
  "PLUS",
  "MINUS",
  "NUMBER",
  "OBRACKET",
  "CBRACKET",
  "EQUAL"
  };
public String[] TT;
	public sym(){
		TT = new String[100];
		TT[6]=new String("CBRACKET");
		TT[1]=new String("error");
		TT[2]=new String("PLUS");
		TT[7]=new String("EQUAL");
		TT[4]=new String("NUMBER");
		TT[3]=new String("MINUS");
		TT[5]=new String("OBRACKET");
		TT[0]=new String("EOF");
	}
public String getTT(int i){return TT[i];}
}
