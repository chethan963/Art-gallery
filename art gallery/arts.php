
    <?php include('partials-front/menu.php'); ?>

    <!-- art sEARCH Section Starts Here -->
    <section class="art-search text-center">
        <div class="container">
            
            <form action="<?php echo SITEURL; ?>art-search.php" method="POST">
                <input type="search" name="search" placeholder="Search for Products.." required>
                <input type="submit" name="submit" value="Search" class="btn btn-primary">
            </form>

        </div>
    </section>
    <!-- art sEARCH Section Ends Here -->



    <!-- art MEnu Section Starts Here -->
    <section class="art-menu">
        <div class="container">
            <h2 class="text-center">Products</h2>

            <?php 
                //Display arts that are Active
                $sql = "SELECT * FROM tbl_art WHERE active='Yes'";

                //Execute the Query
                $res=mysqli_query($conn, $sql);

                //Count Rows
                $count = mysqli_num_rows($res);

                //CHeck whether the arts are availalable or not
                if($count>0)
                {
                    //arts Available
                    while($row=mysqli_fetch_assoc($res))
                    {
                        //Get the Values
                        $id = $row['id'];
                        $title = $row['title'];
                        $description = $row['description'];
                        $price = $row['price'];
                        $image_name = $row['image_name'];
                        ?>
                        
                        <div class="art-menu-box">
                            <div class="art-menu-img">
                                <?php 
                                    //CHeck whether image available or not
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
                    //art not Available
                    echo "<div class='error'>Product not found.</div>";
                }
            ?>

            

            

            <div class="clearfix"></div>

            

        </div>

    </section>
    <!-- art Menu Section Ends Here -->

    <?php include('partials-front/footer.php'); ?>