
package CT;
import java.util.Random;
public class RandomN

{
		public static int main() 
			{
		Random randomGenerator = new Random();
		int randomInt=0;
		Boolean cond=true;
		randomInt = randomGenerator.nextInt(100000);
		return randomInt;

			}
}