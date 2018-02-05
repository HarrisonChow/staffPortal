
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

    <style media="screen">
      body {
        margin: 0px;
        background: #fff;
        top: 0;
        font-family: Montserrat;
        overflow: auto;
      }
      .logo {
        padding: 8px 20px;
        font-size: 32px;
      }
      .logo a {
        color: #fff;
      }
      .kidspace-header {
        height: 60px;
        width: 100%;
        background-color: #33cf59;
        position: fixed;
        top:0; left:0;
        z-index: 9999;
      }
      .title-right {
        padding-right: 10px;
      }
      .title-right .fa {
        font-size: 30px;
        margin-top: 15px;
        margin-right: 10px;
        color: #000;
      }
      .search-input-style {
        max-width: 120px;
        height: 33px;
        margin-top: 4px;
        padding-left: 1.5rem;
        border-radius: 100px;
        background-color: rgba(255, 255, 255, 0.75);
        border: solid 1px #ededed;
        font-size: 13px;
        font-weight: 300;
        color: #343441;
        font-family: Montserrat, "FontAwesome";
      }
      .panel.panel-collapse.collapse.in:last-of-type {
        background-color: lime;
      }
      .search-input-style:focus {
        outline:0;
      }

      .kid-info-header.row{
        margin-left: 0;
        margin-right: 0;
        border-radius: 5px 5px 0 0;
        background-color: #fafafa;
        border: solid 1px #ededed;
      }
      .kid-info-header {
        border-bottom: solid 1px #ededed;
      }
      .calendar-title, .games-title, .email-title, .learning-title {
        font-size: 15px;
        font-weight: 500;
        color: #343441;
      }
      .games-title, .calendar-title, .learning-title {
        padding: 10px;
        padding-left: 15px;
      }
      .email-title {
        padding: 18px;
        padding-left: 15px;
      }
      .games-title i, .calendar-title i, .learning-title i, .email-title i {
        padding-right: 10px;
      }
      .calendar, .email {
        z-index: 999;
      }
      .calendar {
        margin-top: 15px;
      }
      .googleCalendar {
        width: 100%;
        min-height: 350px;
      }

      .games-list, .learning-list {
        padding-top: 15px;
        border-radius: 0 0 5px 5px;
        background-color: #fafafa;
        border: solid 1px #ededed;
        min-height: 210px;
        margin-bottom: 20px;
      }
      .games-list li, .learning-list li {
        list-style-type: none;
        padding: 6px 0;
        font-size: 16px;
        font-weight: 400;
        color: #343441;
      }
      .games-list li img, .learning-list li img {
        padding-right: 10px;
      }
      ul, menu, dir {
        -webkit-padding-start: 25px;
      }
      #wrapper{
        margin-top: 60px;
      }

      .wrapper {
        padding-left: 250px;
        transition: all 0.4s ease 0s;
      }
      .wrapperClose {
        padding-left: 0px;
        transition: all 0.4s ease 0s;
      }
      #kidSpaceSidebar {
        margin-left: -250px;
        width: 250px;
        position: fixed;
        overflow-y: auto;
        z-index: 1000;
        transition: all 0.4s ease 0s;
        height: 100%;
        background-color: #fafafa;
        border-right: solid 1px #ededed;
      }
      .kidSpaceSidebar {
          left: 250px;
          transition: all 0.4s ease 0s;
      }

      .kidSpaceSidebarClose {
          left: 0px;
          transition: all 0.4s ease 0s;
      }
      .kidSpaceSidebarOpen {
          left: 250px !important;
          transition: all 0.4s ease 0s;
      }

      .kidSpaceSidebar {
      	background-color: #fafafa;
      	border: solid 1px #ededed;
        color: #343441;
        font-size: 14px;
        font-weight: 500;
      }
      .kidSpaceSidebar li, .kidSpaceSidebarOpen li, .kidSpaceSidebarClose li {
        list-style-type: none;
        padding: 20px 20px;
        border-radius: 5px;
      	background-color: #fafafa;
      	border: solid 1px #ededed;
        margin: 5px 10px;
      }
      .kidSpaceSidebar li i .kidSpaceSidebarOpen li i, .kidSpaceSidebarClose li i {
        padding-right: 10px;
      }
      .kidSpaceSidebar ul, .kidSpaceSidebarOpen ul, .kidSpaceSidebarClose ul menu, dir {
        -webkit-padding-start: 0px;
      }
      .kidSpaceContainer {
        margin-left: 25px;
        margin-right: 25px;
        width: calc(100%-500px);
        padding-top: 20px;
      }
      .bottom-menu-content {
        padding: 20px;
      }
      .bottom-menu {
        position: fixed;
        width: 250px;
        bottom: 0px;
        background-color: #ededed;
        min-height: 250px;
      }
      .bottom-menu-details {
        padding-top: 10px;
      }
      .bottom-menu-item {
        font-size: 14px;
      	font-weight: 300;
      	color: #343441;
        padding-bottom: 20px;
        background-repeat: no-repeat;
        background-position: 0 .5em;
        padding-left: 30px;
      }
      .bottom-menu-item i {
        padding-right: 10px;
      }
      .login {
        opacity: 0.4;
        font-size: 12px;
        font-weight: bold;
        color: #343441;
      }
      .username {
        font-size: 14px;
        color: #343441;
        padding-bottom: 10px;
      	border-bottom: solid 1px rgba(52,52,65,0.4);
      }
      .logout {
        font-size: 14px;
        font-weight: 600;
        color: #343441;
        border-top: solid 1px rgba(52,52,65,0.4);
        padding-top: 15px;
        background-repeat: no-repeat;
        background-position: right 100%;
      }
      .logout i {
        float: right;
        font-size: 25px;
      }
      .logo-plus-button, .logo-plus-button>div {
        display: none !important;
      }
      .kid-left, .kid-right {
        padding-left: 0;
        padding-right: 0;
      }

      @media only screen and (max-width: 992px) and (min-width: 600px)  {
        .kid-left {
          height: 505px;
        }
      }

      @media (max-width:767px) {
        #wrapper {
          padding-left: 0;
        }
        #kidSpaceSidebar {
          left: 0;
        }
        #wrapper.active {
          position: relative;
          left: 250px;
        }
        #wrapper.active #kidSpaceSidebar {
          left: 250px;
          width: 250px;
          transition: all 0.4s ease 0s;
        }
      }
      @media (max-width:600px) {
        .calendar{
          display: none;
        }
        .kid-left {
          height: 75px;
        }
      }

    </style>

    <div class="kidspace-header">
      <div class="logo">
        <a href="#sidebar" class="collapsed" data-toggle="collapse">
          <i class="fa fa-bars" id="kidSpace-home" aria-hidden="true"></i>
        </a>
      </div>
    </div>
    <div class="wrapperClose" id="wrapper">
      <nav class="kidSpaceSidebarClose" id="kidSpaceSidebar" >
        <ul>
          <li><i class="fa fa-ravelry" aria-hidden="true"></i> SCHOOL LIBRARY</li>
          <li><i class="fa fa-ravelry" aria-hidden="true"></i> EBACKPACK</li>
          <li><i class="fa fa-ravelry" aria-hidden="true"></i> SEARCH DOE</li>
        </ul>

        <div class="bottom-menu">
          <div class="bottom-menu-content">
            <div class="bottom-menu-title">
              <span class="login">LOGGED IN AS</span>
              <p class="username">Michael Alexander</p>
            </div>
            <div class="bottom-menu-details">
              <div class="bottom-menu-item">
                <i class="fa fa-key" aria-hidden="true"></i> Change Password
              </div>
              <div class="bottom-menu-item">
                <i class="fa fa-paint-brush" aria-hidden="true"></i>Change Colour Theme
              </div>
            </div>

            <div class="logout">
              LOG OUT <i class="fa fa-power-off" aria-hidden="true"></i>
            </div>
          </div>
        </div>
      </nav>
      <div class="kidSpaceContainer">
        <div class="content">
          <div class="row">
              <div class="col-lg-4 col-md-6 kid-left">
                <div class="col-xs-12 email">
                    <div class="kid-info-header row">
                      <div class="pull-left email-title">
                        <i class="fa fa-envelope-o" aria-hidden="true"></i> EMAIL
                      </div>
                      <div class="pull-right title-right">
                        <i class="fa fa-sign-in" aria-hidden="true"></i>
                      </div>
                    </div>
                </div>
                <div class="col-xs-12 calendar">
                  <div class="kid-info-header row">
                    <div class="pull-left calendar-title">
                      <i class="fa fa-calendar" aria-hidden="true"></i> CALENDAR
                    </div>
                  </div>
                  <div class="games-list responsive-iframe-container small-container" id="calendar">
                    <iframe class="googleCalendar" src="https://calendar.google.com/calendar/embed?showTitle=0&amp;showNav=0&amp;showDate=0&amp;showPrint=0&amp;showTz=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23fafafa&amp;src=five.test%40test-det-edu.com&amp;color=%232F6309&amp;ctz=Australia%2FSydney" style="border-width:0" frameborder="0" scrolling="no">
                    </iframe>
                  </div>
                </div>
              </div>
              <div class="col-lg-8 col-md-6 kid-right">
                <div class="col-lg-6 col-md-12">
                    <div class="kid-info-header row">
                      <div class="pull-left games-title">
                        <i class="fa fa-gamepad" aria-hidden="true"></i> Games
                      </div>
                    </div>
                    <div class="games-list">
                      <ul>
                        <li> <img src="http://www.placecage.com/20/20">ABC's the Playground</li>
                        <li> <img src="http://www.placecage.com/20/20">BBC - Games</li>
                        <li> <img src="http://www.placecage.com/20/20">Billy The Pirate</li>
                        <li> <img src="http://www.placecage.com/20/20">Go Jetters</li>
                        <li> <img src="http://www.placecage.com/20/20">The Paddy Fields of China</li>
                        <li> <img src="http://www.placecage.com/20/20">Come and Play</li>
                      </ul>
                    </div>
                </div>

                <div class="col-lg-6 col-md-12">
                  <div class="kid-info-header row">
                    <div class="pull-left learning-title">
                      <i class="fa fa-graduation-cap" aria-hidden="true"></i> Learning
                    </div>
                  </div>
                  <div class="learning-list">
                    <ul>
                      <li><img src="http://www.placecage.com/20/20">Recycling</li>
                      <li><img src="http://www.placecage.com/20/20">Reading</li>
                      <li><img src="http://www.placecage.com/20/20">ANZAC</li>
                      <li><img src="http://www.placecage.com/20/20">Experiments</li>
                      <li><img src="http://www.placecage.com/20/20">Nouns</li>
                      <li><img src="http://www.placecage.com/20/20">Mass</li>
                      <li><img src="http://www.placecage.com/20/20">Area</li>
                      <li><img src="http://www.placecage.com/20/20">Geometry</li>
                      <li><img src="http://www.placecage.com/20/20">Chance and probability</li>
                      <li><img src="http://www.placecage.com/20/20">Convict and colonial Australia</li>
                    </ul>
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
    </div>


    <script type="text/javascript">

      current_width = $(window).width();
      if(current_width < 768){
        $("#kidSpace-home").click(function() {
          $('#kidSpaceSidebar').toggleClass("kidSpaceSidebarClose kidSpaceSidebarOpen ");
        });
      } else {
        $("#kidSpace-home").click(function() {
          $('#kidSpaceSidebar').toggleClass("kidSpaceSidebar kidSpaceSidebarClose");
          $('#wrapper').toggleClass("wrapper wrapperClose");
        });
      }

    </script>
