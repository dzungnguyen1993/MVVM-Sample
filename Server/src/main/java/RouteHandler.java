import Model.Girl;
import com.google.gson.Gson;
import spark.Request;
import spark.Response;
import spark.Route;

/**
 * Created by thanh-dungnguyen on 7/16/17.
 */
public class RouteHandler {
    public static Route handleGetInfo = (Request request, Response response) -> {
        InfoResponse infoResponse = new InfoResponse();

        // init girls
        Girl girl1 = new Girl();
        girl1.id = 1;
        girl1.name = "An Vy";
        girl1.photo = "https://drive.google.com/uc?export=download&id=0BzzPgzWwWTLncHhwd2xlX3lST1U";
        infoResponse.girls.add(girl1);

        Girl girl2 = new Girl();
        girl2.id = 2;
        girl2.name = "An Vy";
        girl2.photo = "https://drive.google.com/uc?export=download&id=0BzzPgzWwWTLnX3pKQ3V6akZaU3M";
        infoResponse.girls.add(girl2);

        Girl girl3 = new Girl();
        girl3.id = 3;
        girl3.name = "Ribi Sachi";
        girl3.photo = "https://drive.google.com/uc?export=download&id=0BzzPgzWwWTLnZ1VCSnphb1AxNzA";
        infoResponse.girls.add(girl3);

        Girl girl4 = new Girl();
        girl4.id = 4;
        girl4.name = "Ribi Sachi";
        girl4.photo = "https://drive.google.com/uc?export=download&id=0BzzPgzWwWTLnMS1oX3NPRy1ZUjQ";
        infoResponse.girls.add(girl4);

        Girl girl5 = new Girl();
        girl5.id = 5;
        girl5.name = "Lan Hương";
        girl5.photo = "https://drive.google.com/uc?export=download&id=0BzzPgzWwWTLnSGUyTk5NVU5wN0E";
        infoResponse.girls.add(girl5);

        infoResponse.status = 1;
        Gson gson = new Gson();

        return gson.toJson(infoResponse);
    };
}
