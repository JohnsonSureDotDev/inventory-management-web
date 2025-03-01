<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>360 inventory management</title>
    <link rel="stylesheet" href="main.css" />
  </head>
  <body>
    <div id="obstractionLayer"></div>

    <div class="main">
      <div id="intermediateMain">
        <div id="sellConfirmationInterface">
          <div>
            <h2>sell confirmation</h2>
            <hr />
            <h3>
              confirm sell of <span id="itemSold"></span> at KES<span
                id="itemSellingPrice"
              ></span>
            </h3>
            <h4>
              Want to change selling price ?<input
                type="button"
                id="cspActive"
                value="yes"
              />
            </h4>

            <input
              type="text"
              name="customSellingprice"
              placeholder="enter NEW selling price "
              id="customSellingPrice"
            />
          </div>

          <div class="confirmationBtn">
            <button id="sell">sell inactive</button>
            <button id="cancel">cancel</button>
          </div>
        </div>
      </div>
      <div class="banner">360</div>
      <div class="content1">
        <nav>
          <div class="userPhoto1">
            <div class="userPhoto">
              <img src="./images/man.png" alt="user image" />
            </div>
            <div class="username">Admin</div>
          </div>

          <div class="search">
            <input
              type="text"
              name="search"
              id="searchBar"
              placeholder="Search for a model number of the spare"
            />
          </div>
          <div class="menuHolder">
            <!--  <div class="toggleBtn">
                <div id="r"></div>
                <div id="c"></div>
                <div id="l"></div>
            </div>tn
            <div id="messages"><img src="./images/messenger.png" alt="" srcset=""></div>
            <div id="print"><img src="" alt="print" srcset=""></div>
            <div id="menu"><img src="./images/menu.png" alt="" srcset=""></div> -->
          </div>
        </nav>
        <div class="tableHolder">
          <table>
            <thead>
              <th>box No</th>
              <th>item</th>
              <th>model</th>
              <th>selling price</th>
              <th>in stock</th>
              <!--  <th>sold</th>
                <th>buying price</th>
                <th>profit</th>
                <th>day bought</th> -->
              <th>day sold</th>
              <th>sell</th>
            </thead>
            <tbody class="appendToMe"></tbody>
          </table>
        </div>
      </div>
    </div>

    <button draggable="true" id="blurBtn">blur</button>
    <script src="main.js"></script>
  </body>
</html>
