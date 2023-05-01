
    <?php include('partials-front/menu.php'); ?>

    <!-- art sEARCH Section Starts Here -->
    <section class="art-search text-center">
        <div class="container">
            <?php 

                //Get the Search Keyword
                $search = $_POST['search'];
            
            ?>


            <h2><a href="#" class="text-white">Results on Your Search "<?php echo $search; ?>"</a></h2>

        </div>
    </section>
    <!-- art sEARCH Section Ends Here -->



    <!-- art MEnu Section Starts Here -->
    <section class="art-menu">
        <div class="container">
            <h2 class="text-center">Products</h2>

            <?php 

                //SQL Query to Get arts based on search keyword
                $sql = "SELECT * FROM tbl_art WHERE title LIKE '%$search%' OR description LIKE '%$search%'";

                //Execute the Query
                $res = mysqli_query($conn, $sql);

                //Count Rows
                $count = mysqli_num_rows($res);

                //Check whether art available of not
                if($count>0)
                {
                    //art Available
                    while($row=mysqli_fetch_assoc($res))
                    {
                        //Get the details
                        $id = $row['id'];
                        $title = $row['title'];
                        $price = $row['price'];
                        $description = $row['description'];
                        $image_name = $row['image_name'];
                        ?>

                        <div class="art-menu-box">
                            <div class="art-menu-img">
                                <?php 
                                    // Check whether image name is available or not
                                    if($image_name=="")
                                    {
                                        //Image not Available
                                        echo "<div class='error'>Image not Available.</div>";
                                    }
                                    else
                                    {
                                        //Image Available
                                        ?>
                                        <img src="<?php echo SITEURL; ?>images/art/<?php echo $image_name; ?>" alt="Chicke Hawain Pizza" class="img-responsive img-curve">
                                        <?php 

                                    }
                                ?>
                                
                            </div>

                            <div class="art-menu-desc">
                                <h4><?php echo $title; ?></h4>
                                <p class="art-price">$<?php echo $price; ?></p>
                                <p class="art-detail">
                                    <?php echo $description; ?>
                                </p>
                                <br>

                                <a href="<?php echo SITEURL; ?>order.php?art_id=<?php echo $id; ?>" class="btn btn-primary">Order Now</a>
                            </div>
                        </div>

                        <?php
                    }
                }
                else
                {
                    //art Not Available
                    echo "<div class='error'>art not found.</div>";
                }
            
            ?>

            

            <div class="clearfix"></div>

            

        </div>

    </section>
    <!-- art Menu Section Ends Here -->

    <?php include('partials-front/footer.php'); ?>