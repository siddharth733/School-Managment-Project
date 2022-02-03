<?php include('header.php'); ?>
<?php include('includes/config.php'); ?>

    <!--Navbar -->
    <nav class="mb-1 navbar navbar-expand-lg navbar-dark default-color">
        <a class="navbar-brand" href="#"> <b>SMS</b> </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333" aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Pricing</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown
                    </a>
                    <div class="dropdown-menu dropdown-default" aria-labelledby="navbarDropdownMenuLink-333">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto nav-flex-icons">
                <li class="nav-item dropdown">
                    <?php if (isset($_SESSION['login'])) { ?>
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user mr-2"></i>Account
                    </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-default" aria-labelledby="navbarDropdownMenuLink-333">
                        <a class="dropdown-item" href="/school/admin/dashboard.php">Dashboard</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="logout.php">Logout</a>
                    </div>
                   <?php } else{ ?>
                    <a href="login.php" class="nav-link"><i class="fa fa-user mr-2"></i>Login</a>
                    <?php } ?>
                </li>
            </ul>
        </div>
    </nav>
    <!--/.Navbar -->

    <!-- Banner -->
    <div class="d-flex bg-light shadow" style="height: 500px; background:linear-gradient(-45deg,#3923a7 40%,transparent 40%)">
        <div class="container-fluid my-auto">
            <div class="row">
                <div class="col-lg-6 my-auto">
                    <h1 class="display-3 font-weight-bold">School Managment System</h1>
                    <p id="banner-info">Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam odit dolores quo ullam, laudantium, iste maxime delectus nesciunt, dolor nihil sit ad fuga nam deserunt.</p>
                    <a href="" class="btn btn-lg btn-primary">Call To Action</a>
                </div>
                <div class="col-lg-6">
                    <div class="w-50 mx-auto card shadow-lg">
                        <div class="card-body">
                            <h3>Inquiry Form</h3>
                            <form action="" method="POST">
                                <!-- Material input -->
                                <div class="md-form">
                                    <input type="text" id="name" class="form-control">
                                    <label for="form1">Your Name</label>
                                </div>
                                <!-- Material input -->
                                <div class="md-form">
                                    <input type="email" id="email" class="form-control">
                                    <label for="email">Your Email</label>
                                </div>
                                <!-- Material input -->
                                <div class="md-form">
                                    <input type="text" id="mobile" class="form-control">
                                    <label for="form1">Your Mobile</label>
                                </div>
                                <!-- Material input -->
                                <div class="md-form">
                                    <input type="text" id="class" class="form-control">
                                    <label for="form1">Your Class</label>
                                </div>

                                <button class="btn btn-dark btn-block">Submit Form</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- About Us -->
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 py-5">
                    <h2 class="text-info font-weight-bold">About School Managment System</h2>
                    <div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint ducimus adipisci eum quibusdam assumenda repudiandae possimus? Recusandae corporis eum reprehenderit laborum reiciendis dolore quam iusto officia voluptatem culpa laboriosam ipsam necessitatibus sint, labore dicta in veritatis, architecto id voluptatibus! Voluptatum ad nisi, at, blanditiis quidem magni ea dignissimos, beatae molestias aperiam quos!</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique nesciunt officia harum fugiat in maiores nemo! Consectetur adipisci neque explicabo, obcaecati aperiam exercitationem ut ullam a magni laudantium illum! Velit, doloremque assumenda? Vero, omnis perferendis.</p>
                    </div>
                    <a href="about-us.php" class="btn btn-secondary">Know More</a>
                </div>
                <div class="col-lg-6" style="background: url(./assets/images/about.jpeg);">
                </div>
            </div>
        </div>
    </section>

    <!-- Courses -->
    <section class="py-5  bg-light">
        <div>
            <div class="text-center mb-4">
                <h2 class="font-weight-bold">Course Details</h2>
                <p class="text-muted">Here We Showing Our Course Details</p>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <?php
                $query = mysqli_query($db_conn,"SELECT * FROM courses ORDER BY id DESC LIMIT 0,4");
                while($course = mysqli_fetch_object($query)){ ?>
                    <div class="col-lg-3 mb-4">
                        <div class="card">
                            <div>
                                <img src="./uploads/<?= $course->image?>" alt="main" class="img-fluid rounded-top course-image"">
                            </div>
                            <div class="card-body">
                                <b><?= $course->name ?></b>
                                <p class="card-text">
                                    <b>Duration :</b> <?= $course->duration ?> <br>
                                    <b>Price :</b> 4000 rs
                                </p>
                                <button class="btn btn-block btn-dark btn-sm">Enroll Now</button>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>

    <!-- Teachers -->
    <section class="py-5">
        <div class="text-center mb-4">
            <h2 class="font-weight-bold">Teachers Details</h2>
            <p class="text-muted">Here We Showing Our Teacher Details</p>
        </div>
        <div class="container">
            <div class="row">
                <?php for ($i = 0; $i < 8; $i++) { ?>
                    <div class="col-lg-3 my-5">
                        <div class="card">
                            <div class="col-6 position-absolute" style="top:-50px; ">
                                <img src="./assets/images/placeholder.jpeg" alt="" class="mw-100 border rounded-circle">
                            </div>
                            <div class="card-body pt-5 mt-2">
                                <p class="card-title"><b>Teachers Name</b></p>
                                <p class="card-text">
                                    <b>Courses:</b> 5 <br>
                                    <b>Rating:</b> <i class="fa  fa-star text-warning"></i> <i class="fa  fa-star text-warning"></i> <i class="fa  fa-star text-warning"></i> <i class="fa  fa-star text-warning"></i> <i class="fa  fa-star text-warning"></i>
                                </p>
                            </div>
                        </div>
                    </div>
                <?php  } ?>
            </div>
        </div>
    </section>

    <!-- Achivement  -->
    <section class="py-5 bg-light">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <h2>Achivments</h2>
                        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Modi dolorem quo est quos animi alias dolore quasi debitis fuga facere, error tempore expedita ipsam fugiat neque ea voluptate commodi reprehenderit inventore nemo!</p>
                        <img src="./assets/images/about.jpeg" alt="" class="img-fluid rounded">
                    </div>
                    <div class="col-lg-6 my-auto">
                        <div class="row">
                            <div class="col-lg-6 mb-4">
                                <div class="card border rounded shadow text-center">
                                    <div class="card-body">
                                        <span><i class="fa fa-graduation-cap fa-2x"></i></span>
                                        <h2 class="my-2 font-weight-bold h1">352</h2>
                                        <hr>
                                        <h4>Graduate Students</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="card border rounded shadow text-center">
                                    <div class="card-body">
                                        <span><i class="fa fa-graduation-cap fa-2x"></i></span>
                                        <h2 class="my-2 font-weight-bold h1">352</h2>
                                        <hr>
                                        <h4>Graduate Students</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="card border rounded shadow text-center">
                                    <div class="card-body">
                                        <span><i class="fa fa-graduation-cap fa-2x"></i></span>
                                        <h2 class="my-2 font-weight-bold h1">352</h2>
                                        <hr>
                                        <h4>Graduate Students</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="card border rounded shadow text-center">
                                    <div class="card-body">
                                        <span><i class="fa fa-graduation-cap fa-2x"></i></span>
                                        <h2 class="my-2 font-weight-bold h1">352</h2>
                                        <hr>
                                        <h4>Graduate Students</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonial  -->
    <section class="py-5">
        <div class="container">
            <div class="text-center mb-4">
                <h2 class="font-weight-bold">What Pepole See</h2>
                <p class="text-muted">Here We Showing Our Teacher Details</p>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-6 mb-4">
                        <div class="border rounded p-3">
                            <img src="./assets/images/about.jpeg" alt="" class="rounded-circle position-relative border mt-2" width="100" height="100">
                            <h6 class="mt-2"><b>Number Of Candidates</b></h6>
                            <h6>Designation</h6>
                            <div class="p-4 text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates aspernatur mollitia delectus ratione itaque suscipit facere maxime eum tenetur nesciunt nemo reiciendis repudiandae dignissimos quibusdam sint, asperiores dolor perferendis. Iste sequi ad voluptates corrupti blanditiis.</div>
                        </div>
                    </div>
                    <div class="col-6 mb-4">
                        <div class="border rounded p-3">
                            <img src="./assets/images/about.jpeg" alt="" class="rounded-circle position-relative border mt-2" width="100" height="100">
                            <h6 class="mt-2"><b>Number Of Candidates</b></h6>
                            <h6>Designation</h6>
                            <div class="p-4 text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates aspernatur mollitia delectus ratione itaque suscipit facere maxime eum tenetur nesciunt nemo reiciendis repudiandae dignissimos quibusdam sint, asperiores dolor perferendis. Iste sequi ad voluptates corrupti blanditiis.</div>
                        </div>
                    </div>
                    <div class="col-6 mb-4">
                        <div class="border rounded p-3">
                            <img src="./assets/images/about.jpeg" alt="" class="rounded-circle position-relative border mt-2" width="100" height="100">
                            <h6 class="mt-2"><b>Number Of Candidates</b></h6>
                            <h6>Designation</h6>
                            <div class="p-4 text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates aspernatur mollitia delectus ratione itaque suscipit facere maxime eum tenetur nesciunt nemo reiciendis repudiandae dignissimos quibusdam sint, asperiores dolor perferendis. Iste sequi ad voluptates corrupti blanditiis.</div>
                        </div>
                    </div>
                    <div class="col-6 mb-4">
                        <div class="border rounded p-3">
                            <img src="./assets/images/about.jpeg" alt="" class="rounded-circle position-relative border mt-2" width="100" height="100">
                            <h6 class="mt-2"><b>Number Of Candidates</b></h6>
                            <h6>Designation</h6>
                            <div class="p-4 text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates aspernatur mollitia delectus ratione itaque suscipit facere maxime eum tenetur nesciunt nemo reiciendis repudiandae dignissimos quibusdam sint, asperiores dolor perferendis. Iste sequi ad voluptates corrupti blanditiis.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer  -->
    <footer class="py-5 bg-dark text-white">
        <div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4">
                        <h4>UseFull Links</h4>
                        <ul class="fa-ul ml-4">
                            <li><a href="" class="text-light"><i class="fa-li fa fa-angle-right"></i>List icons</a></li>
                            <li><a href="" class="text-light"><i class="fa-li fa fa-angle-right"></i>can be used</a></li>
                            <li><a href="" class="text-light"><i class="fa-li fa fa-angle-right"></i>as bullets</a></li>
                            <li><a href="" class="text-light"><i class="fa-li fa fa-angle-right"></i>in lists</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4">
                        <h4>Social Presence</h4>
                        <div>
                            <span class="fa-stack">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fab fa-facebook-f fa-stack-1x fa-inverse text-dark"></i>
                            </span>
                            <span class="fa-stack">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fab fa-instagram fa-stack-1x fa-inverse text-dark"></i>
                            </span>
                            <span class="fa-stack">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fab fa-twitter fa-stack-1x fa-inverse text-dark"></i>
                            </span>
                            <span class="fa-stack">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fab fa-linkedin fa-stack-1x fa-inverse text-dark"></i>
                            </span>
                            <span class="fa-stack">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fab fa-youtube fa-stack-1x fa-inverse text-dark"></i>
                            </span>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <h4>Feedback</h4>
                        <form action="">
                                <div class="form-group">
                                    <input type="email" id="email" class="form-control mt-2" placeholder="Your Email">
                                    <!-- <label for="email">Email</label> -->
                                </div>
                                <div class="form-group">
                                    <input type="text" id="resopnse" class="form-control mb-4" placeholder="Your Feedback">
                                    <!-- <label for="resopnse">Feedback</label> -->
                                </div>
                                <div>
                                    <button class="bt btn-secondary rounded p-1 btn-block">Submit</button>
                                </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <section class="py-2 bg-dark text-white text-center">
        <div class="container-fluid">
            Copyright 2022-2024 All Right Reserved. <br> <a href="" class="text-light"> School Managment System</a>
        </div>
    </section>

    <?php include('footer.php'); ?>