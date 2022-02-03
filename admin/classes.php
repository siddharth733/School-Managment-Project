<?php include('header.php'); ?>
<?php include('sidebar.php'); ?>
<?php
if (isset($_POST['submit'])) {
    $title = $_POST['title'];
    // echo'<pre>';
    // print_r($_POST);
    // echo'</pre>';
    $sections = implode(',', $_POST['section']);
    $added_date = date('Y-m-d');
    mysqli_query($db_conn, "INSERT INTO classes (title,section,added_date) VALUES ('$title','$sections','$added_date')");
}
?>
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Manage Classes</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                    <li class="breadcrumb-item active">Classes</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <?php
        if (isset($_REQUEST['action'])) { ?>
            <div class="card bg-white">
                <div class="card-header">
                    <h3 class="card-title">Add New Classes</h3>
                </div>
                <div class="card-body">
                    <form action="" method="POST">
                        <div class="form-group">
                            <label for="name">Title</label>
                            <input type="text" name="title" placeholder="Enter Class Name" class="form-control bg-white" required><br>
                            <label for="name">Sections</label>
                            <?php
                            $query = mysqli_query($db_conn, 'SELECT * FROM sections');
                            $count = 1;
                            while ($sections = mysqli_fetch_object($query)) { ?>
                                <div>
                                    <label for="<?= $count++ ?>">
                                        <input type="checkbox" id="<?= $count++ ?>" value="<?= $sections->id ?>" name="section[]" placeholder="Section">
                                        <?= $sections->title ?>
                                    </label>
                                </div>
                            <?php } ?>
                        </div>
                        <button class="btn btn-success" name="submit">Submit</button>
                    </form>
                </div>
            </div>
        <?php } else { ?>
            <!-- Info boxes -->
            <div class="card bg-white">
                <div class="card-header">
                    <h3 class="card-title">Classes</h3>
                    <div class="card-tools">
                        <a href="?action=add-new" class="btn btn-success"><i class="fa fa-plus mr-2"></i> Add Class</a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive bg-white">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Name</th>
                                    <th>Section</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $count = 1;
                                $args = array(
                                    'type' => 'class',
                                    'status' => 'publish',
                                );
                                $classes = get_posts($args);
                               foreach($classes as $class) { ?>
                                    <tr>
                                        <td><?= $count++ ?></td>
                                        <td><?= $class->title ?></td>
                                        <td>
                                        <?php
                                            $class_meta = get_metadata($class->id,'section');
                                                foreach($class_meta as $meta){
                                                    // print_r(get_post(array('id'=>$meta->meta_value)));
                                                    $show = get_post(array('id'=>$meta->meta_value));
                                                    echo $show->title."<br>";
                                                }
                                        ?>
                                        </td>
                                        <td><button class="btn btn-danger">Delete</button></td>
                                    </tr>
                                <?php }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        <?php } ?>
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->
<?php include('footer.php'); ?>