import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.By;

public class LoginTest {
    private WebDriver driver;

    @Before
    public void setUp() {
        // Configura la ruta del driver de Chrome
        System.setProperty("webdriver.chrome.driver", "/path/to/chromedriver");
        driver = new ChromeDriver();
    }

    @Test
    public void testLoginValido() {
        driver.get("https://katalon-demo-cura.herokuapp.com/");
        driver.findElement(By.id("txt-username")).sendKeys("John Doe");
        driver.findElement(By.id("txt-password")).sendKeys("ThisIsNotAPassword");
        driver.findElement(By.id("btn-login")).click();
        // Verifica que el usuario fue redirigido correctamente
        assert(driver.getPageSource().contains("Make Appointment"));
    }

    @After
    public void tearDown() {
        driver.quit();
    }
}
