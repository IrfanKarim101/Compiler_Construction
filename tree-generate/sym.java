
//----------------------------------------------------
// The following code was generated by CUP v0.11b beta 20140226
//----------------------------------------------------

/** CUP generated class containing symbol constants. */
public class sym {
  /* terminals */
  public static final int MINUS = 3;
  public static final int B = 8;
  public static final int A = 9;
  public static final int OBRACKET = 5;
  public static final int NUMBER = 4;
  public static final int CBRACKET = 6;
  public static final int EQUAL = 7;
  public static final int EOF = 0;
  public static final int PLUS = 2;
  public static final int error = 1;
  public static final String[] terminalNames = new String[] {
  "EOF",
  "error",
  "PLUS",
  "MINUS",
  "NUMBER",
  "OBRACKET",
  "CBRACKET",
  "EQUAL",
  "B",
  "A"
  };
public String[] TT;
	public sym(){
		TT = new String[100];
		TT[3]=new String("MINUS");
		TT[8]=new String("B");
		TT[9]=new String("A");
		TT[5]=new String("OBRACKET");
		TT[4]=new String("NUMBER");
		TT[6]=new String("CBRACKET");
		TT[7]=new String("EQUAL");
		TT[0]=new String("EOF");
		TT[2]=new String("PLUS");
		TT[1]=new String("error");
	}
public String getTT(int i){return TT[i];}
}

