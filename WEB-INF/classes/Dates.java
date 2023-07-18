
package CT;
import java.time.*;
import java.util.*;

public class Dates
{
	public static void main(String[] args) 
	{	
		String s = "2020-12-06";
		String e = "2020-12-10";
		LocalDate start = LocalDate.parse(s);
		LocalDate end = LocalDate.parse(e);
		List<LocalDate> totalDates = new ArrayList<>();
		while (!start.isAfter(end)) {
			totalDates.add(start);
				System.out.println(start);
			
			start = start.plusDays(1);
		}
	}


	public static int get(String s, String e)throws Exception
	{	
		Vector<String> v=new Vector<String>();
		LocalDate start = LocalDate.parse(s);
		LocalDate end = LocalDate.parse(e);
		List<LocalDate> totalDates = new ArrayList<>();
		int i=0;
		while (!start.isAfter(end)) {
			i++;
			totalDates.add(start);
				System.out.println(start);
				v.add(start+"");
				start = start.plusDays(1);
		}
		return i;
	}
}
