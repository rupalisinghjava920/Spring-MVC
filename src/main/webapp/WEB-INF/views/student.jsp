<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <section class="vh-100" style="background-color: ;">
                    <div class="container py-5 h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col col-xl-10">
                                <div class="card" style="border-radius: 1rem;">
                                    <div class="row g-0">
                                        <div class="col-md-6 col-lg-5 d-none d-md-block">
                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                                                 alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                        </div>
                                        <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                            <div class="card-body p-4 p-lg-5 text-black">
                                                <form>
                                                    <!-- Your form content here -->
                                                    <div class="form-outline mb-4">
                                                        <input type="text" name="name" id="name" class="form-control form-control-lg" />
                                                        <label class="form-label" for="name"> Name</label>
                                                    </div>
                                                    <div class="form-outline mb-4">
                                                        <input type="text" name="department" id="department" class="form-control form-control-lg" />
                                                        <label class="form-label" for="department">Department</label>
                                                    </div>
                                                    <div class="pt-1 mb-4">
                                                        <button onclick="saveStudent()" class="btn btn-dark btn-lg btn-block" type="button">Add Student</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

    <script>
        function saveStudent() {
            var name = $("#name").val();
            var department = $("#department").val();

            $.ajax({
                type: "POST",
                url: "saveStudent",
                data: {
                    name: name,
                    department: department
                },
                success: function(data) {
                    alert(data);
                },
                error: function() {
                    alert("Error occurred");
                }
            });
        }
    </script>
</body>
</html>
