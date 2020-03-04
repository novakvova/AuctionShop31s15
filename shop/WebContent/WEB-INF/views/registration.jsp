<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="login-register.css" />
</head>

<body>
    <div class="container pt-5">
        <div class="card mx-auto border-0">
            <div class="card-header border-bottom-0 bg-transparent text-center">
                <h2>Регістрація</h2>
            </div>

            <div class="card-body pb-4">
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-login" role="tabpanel"
                        aria-labelledby="pills-login-tab">
                        <form>
                            <div class="form-group">
                                <input type="text" name="username" id="name" class="form-control"
                                    placeholder="Ваше ім'я" required>
                            </div>

                            <div class="form-group">
                                <input type="text" name="usersurname" id="surname" class="form-control"
                                    placeholder="Ваше прізвище" required>
                            </div>

                            <div class="form-group">
                                <input type="text" name="phone" id="phone" class="form-control"
                                    placeholder="+38 (999) 99 99 999" required>
                            </div>

                            <div class="form-group">
                                <input type="email" name="email" id="email" class="form-control"
                                    placeholder="Електронна пошта">
                            </div>

                            <div class="form-group">
                                <input type="password" name="password" id="password" class="form-control"
                                    placeholder="Пароль" required>
                            </div>

                            <div class="form-group">
                                <input type="password" name="password_confirmation" id="password-confirm"
                                    class="form-control" placeholder="Підтвердіть пароль" required>
                            </div>

                            <div class="custom-control custom-checkbox text-center">
                                <input class="custom-control-input" id="customCheck1" checked="" type="checkbox">
                                <label class="custom-control-label" for="customCheck1">З умовами конфіденційності згідний</label>
                            </div>

                            <div class="text-center mt-3 pt-2 pb-1">
                                <button type="submit" class="btn btn-primary">Зареєструватись</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>

</html>