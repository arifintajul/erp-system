ECHO is off.
<?php
use PHPUnit\Framework\TestCase;

class LoginTest extends TestCase {
    public function testValidLogin() {
        $loginController = new LoginController();
        $result = $loginController->login('validUser', 'validPassword');
        $this->assertTrue($result);
    }

    public function testInvalidLogin() {
        $loginController = new LoginController();
        $result = $loginController->login('invalidUser', 'wrongPassword');
        $this->assertFalse($result);
    }
}
?>

