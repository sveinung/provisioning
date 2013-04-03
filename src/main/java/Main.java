import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.nio.SelectChannelConnector;
import org.eclipse.jetty.webapp.WebAppContext;

public class Main {
    public static void main(String[] args) {
        Server server = new Server();

        try {
            server.setStopAtShutdown(true);

            server.setConnectors(getConnectors());
            server.setHandler(getWebAppContext());

            server.start();
            server.join();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private static Handler getWebAppContext() {
        String webApp;
        if ("true".equals(System.getProperty("dev"))) {
            webApp = "src/main/webapp";
        } else {
            webApp = Main.class.getProtectionDomain().getCodeSource().getLocation().getPath();
        }

        WebAppContext webAppContext = new WebAppContext(webApp, "/");

        return webAppContext;
    }

    private static Connector[] getConnectors() {
        Connector connector = new SelectChannelConnector();

        connector.setPort(8080);
        connector.setMaxIdleTime(30000);

        return new Connector[] { connector };
    }
}
