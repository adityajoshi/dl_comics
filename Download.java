import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class Download{
		  public static void main(String [] args){
					 try{
								String url = args[0];
								Document doc = Jsoup.connect(url).get();
								Elements p1 = doc.getElementsByClass("img-responsive");
								for(Element e : p1){
										  System.out.println(e.attr("data-src"));
								}
					 } catch(Exception ex){
								ex.printStackTrace();
					 }
		  }
}
