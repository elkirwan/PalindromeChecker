public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
String a = new String("");
  for(int i = 0; i<word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)))
    {
      a=a+word.charAt(i);
    }
  }
String b = new String("");
  for(int i =0; i<a.length(); i++)
  {
    b = b + Character.toLowerCase(a.charAt(i));
  }
if(b.equals(reverse(b)))
{ return true;}
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length()-1; i>-1; i--)
  {
   sNew = sNew + str.substring(i,i+1);
  
  }
    return sNew;
}