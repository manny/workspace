public class NthPrime{
	public static void main(String[] args){
		
		int count = 2;  // divisor for checking prime
		int a = 1; //a = number being checked for prime status
		int primeCount = 0;  //counts how many prime numbers have been found
	
		System.out.println("Enter n");
		int n = IO.readInt();
		
		while(n<=0){
			IO.reportBadInput();
			System.out.println("Enter n");
			n=IO.readInt();
		}	
		while(primeCount!=n){
			a++;  //a = number being checked for prime status
			while(count<a){
				if(a%count==0){
					break;
				}
				count++;
			}
			if(count == a){
				primeCount++;
			}
			count = 2;
		}
		IO.outputIntAnswer(a);
	}
}	
