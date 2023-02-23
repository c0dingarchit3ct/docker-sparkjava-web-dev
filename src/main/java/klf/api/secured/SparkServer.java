//java spring boot controller

package klf.api.secured;
import static spark.Spark.*;

public class SparkServer {
    public static void main(String[] args) {
        get("/", (req, res) -> "Hello, World! spark auto restart ");
        
        get ("/exit", (req, res) -> {
            stop();
            return "Server stopped";});
    }
}
