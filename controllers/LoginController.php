<?php
class LoginController {
    public function login($username, $password) {
        // Validasi username dan password
        $user = User::getByUsername($username);
        if ($user && password_verify($password, $user->password)) {
            $_SESSION['user'] = $user;
            return true;
        }
        return false;
    }
}
?>
