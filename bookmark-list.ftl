
  <style>
      .bookmark-container-fluid {
        font-family: Montserrat;
      }
      .bookmark-container-fluid .bookmark-summary ul li {
        float: left;
        padding: 2px;
      }
      .bookmark-container-fluid .row{
        margin-left: auto;
        margin-right: auto;
      }
      .bookmark-container-fluid .input-style {
        width: 100%;
        height: 34px;
        margin-top: 13px;
        padding-left: 2.5rem;
        border-radius: 100px;
        background-color: rgba(255, 255, 255, 0.85);
        border: solid 1px #ededed;
      	font-size: 13px !important;
      	font-weight: 300;
      	color: #343441;
        font-family: Montserrat, "FontAwesome";
      }
      .bookmark-container-fluid .seach-btn {
        position: absolute;
        color: #fff;
        border-radius: 100px !important;
        background: #4ab9b8 !important;
        border: solid 1px #ededed !important;
        width: 77px;
        right:18px;
        top: 16px;
        height: 28px;
        font-size: 10px !important;
        font-weight: 400;
      }
      .bookmark-container-fluid .seach-btn:focus, .bookmark-container-fluid .input-style:focus {
        outline:0;
      }
      .bookmark-container-fluid .search-input {
  			position: relative;
  		}
  		.bookmark-container-fluid .search-input .search-icon {
  			position: absolute;
  			top: 21px;
  			left: 6px !important;
  		}
      .search-bar {
        margin-bottom: 20px;
      }
      .bookmark-add, .bookmark-delete {
        width: 15px;
        height: 21px;
        background-repeat: no-repeat;
        background-color: rgba(255, 0, 0, 0);
        border-width: 0 !important;
      }
      .bookmark-add {
        background-image: url(assets/images/bookmark-disable.png);
      }
      .bookmark-delete {
        background-image: url(assets/images/bookmark-active.png);
      }
      .bookmark-summary {
        margin-right: auto;
        margin-left: auto;
        max-width: 1200px;
      }
      .bookmark-summary {
        margin-bottom: 15px;
      }
      .bookmark-container-fluid .bookmark-summary ul{
        width: 100%;
        list-style-type: none;
        float: left;
        position: relative;
        min-height: 250px;
      }

      .bookmark {
        padding: 15px;
      }
      .bookmark-container {
        position: relative;
        height: auto;
        min-height: 80px;
  			border-radius: 2px;
  			background-color: #fafafa;
  			border: solid 1px #ededed;
  			color: #343441;
  			margin: 6px;
  			padding-left: 10px;
        cursor: pointer;
      }
      .bookmark-container .link-details {
        padding-top: 5px;
        width: 90%;
      }
      .bookmark-container .link-details span{
        font-size: 14px;
        font-weight: 500;
        text-align: left;
        color: #0e3f51;
      }
      .bookmark-container .link-details section{
        height: 32px;
        width: 90%;
        font-size: 12px;
        font-weight: 300;
        text-align: left;
        color: #343441;
        overflow: hidden;

      }
      .bookmark-container-fluid .bookmark-summary .showdetails{
        height: auto !important;
      }

      .bookmark-container button {
        position: absolute;
        top: 0;
        right: 10px;
      }
      .bookmark-container-fluid .bookmark-summary ul, menu, dir {
        -webkit-padding-start: 0px !important;
      }
      .bookmark-container-fluid .bookmark-summary .more-tools {
        margin-top: 18px;
        padding-right: 15px;
      }
      .bookmark-container-fluid .bookmark-summary .more-tools a{
        font-size: 10px;
        font-weight: 600;
        text-align: center;
        color: #0e3f51;
      }
      .bookmark-container-fluid .bookmark-summary .more-tools span{
        padding-left: 5px;
      }
      .bookmark-container-fluid .bookmark-summary .more-tools a:hover{
        text-decoration: none;
      }

      .bookmark-container-fluid .bookmark-summary .loader {
        border: 6px solid #f3f3f3;
        border-radius: 50%;
        border-top: 6px solid #4ab9b8;
        border-bottom: 6px solid #4ab9b8;
        width: 40px;
        height: 40px;
        -webkit-animation: spin 2s linear infinite;
        animation: spin 2s linear infinite;
      }

      @-webkit-keyframes spin {
        0% { -webkit-transform: rotate(0deg); }
        100% { -webkit-transform: rotate(360deg); }
      }

      @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
      }

      @media (max-width:768px) {
        .search-bar {
          width: 90% !important;
        }
        .bookmark-container-fluid .bookmark-summary .more-tools span{
          display: none;
        }
      }
  </style>

  <div class="bookmark-container-fluid">
    <div class="row bookmark-summary">
      <div class="col-md-4 col-sm-6 col-xs-12 search-bar">
        <div class="search-input">
          <img class="search-icon" src="assets/images/search.png" alt="">
          <input class='input-style col-xs-12' id="search-filter" onkeyup="searchFilter()" placeholder='Enter the keyword here...' onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter the keyword here...'" />
        </div>
        <div>
          <input class="seach-btn" type="button" onclick="searchFilter()" value="SEARCH">
        </div>
      </div>
      <div class="more-tools pull-right">
        <a href="#">
          <img src="assets/images/tools.png" alt="">
          <span>Advanced Tools</span>
        </a>
      </div>
      <div id="all-bookmark-list">
        <ul>
          <li id="bookmark1" class="bookmark col-md-4 col-sm-6 col-xs-12">
            <div class="bookmark-container">
                <div class="link-details">
                  <span><a href="http://172.30.5.52/ams/srv/Authenticate?testmode=yes&amp;debug=true" target="_blank">AMS on the Web</a></span>
                  <section>The AMS on the Web application makes property related details on schools and TAFE colleges available to all DET and TAFE Staff.test
                    <p>
                      <br>For assistance, contact:<br> AMS on the Web support team<br>
                      <a href="mailto:AMSWEBFEEDBACK@det.nsw.edu.au">AMSWEBFEEDBACK@det.nsw.edu.au</a>
                      <br> (02) 9561 8532 <br>
                      <br> AMS on the Web support team1 <br>
                      (02) 9561 8532 <br>
                    </p>
                  </section>
                </div>
                <button class="bookmark-add pull-right" id="" onClick=""></button>
            </div>
          </li>
          <li id="bookmark2" class="bookmark col-md-4 col-sm-6 col-xs-12">
            <div class="bookmark-container">
              <div class="link-details">
                <span><a href="https://online12.test.det.nsw.edu.au/amu/" target="_blank">AMU - Access Management Utility</a></span>
                <section>AMU allows only authorised users to grant access to DET applications or - to delegate authorisation rights to an appropriate person who can grant access to a specific application.
                  <p>
                    <br>For assistance, contact:<br> EDConnect<br>
                    <a href="mailto:ithelp@det.nsw.edu.au">ithelp@det.nsw.edu.au</a>
                    <br>1300 323 232 <br>
                  </p>
                </section>

              </div>
              <button class="bookmark-delete pull-right" id="" onClick=""></button>
            </div>
          </li>
          <li id="bookmark3" class="bookmark col-md-4 col-sm-6 col-xs-12">
            <div class="bookmark-container">
              <div class="link-details">
                <span><a href="http://10.172.32.27" target="_blank">Albion Park High School Remote Access</a></span>
                <section>This link allows you to connect to a computer at school which will give you access to Denbigh, Markbook, Time Chart, Printers, etc
                  <p>
                    <br>For assistance, contact:<br> Owen Crawford<br>
                    <a href="mailto:Owen.Crawford2@det.nsw.edu.au">Owen.Crawford2@det.nsw.edu.au</a>
                    <br> (02) 4257 1744 Extension 230 <br></p>
                </section>

              </div>
              <button class="bookmark-delete pull-right" id="" onClick=""></button>
            </div>
          </li>
          <li id="bookmark4" class="bookmark col-md-4 col-sm-6 col-xs-12">
            <div class="bookmark-container">
              <div class="link-details">
                <span><a href="http://10.194.0.27" target="_blank">Alexandria Park Community School Terminal Server</a></span>
                <section>The terminal server is for performing administration and support activities from home by authorised school staff.
                  <p>
                    <br>For assistance, contact:<br> Stacey Grieve<br>
                    <a href="mailto:alexparkcs-c.school@det.nsw.edu.au">alexparkcs-c.school@det.nsw.edu.au</a>
                    <br> (02) 9698 1967 <br> (02) 9319 7498 <br></p>
                </section>

              </div>
              <button class="bookmark-delete pull-right" id="" onClick=""></button>
            </div>
          </li>
          <li id="bookmark5" class="bookmark col-md-4 col-sm-6 col-xs-12">
            <div class="bookmark-container">
              <div class="link-details">
                <span><a href="http://10.172.48.14" target="_blank">Alstonville High School Terminal Server</a></span>
                <section>Alstonville High School Terminal Server
                  <p></p>
                </section>
              </div>
              <button class="bookmark-add pull-right" id="" onClick=""></button>
            </div>
          </li>

        </ul>
      </div>

    </div>

  </div>

  <#assign links = serviceLocator.findService( "au.gov.nsw.doe.search.service.content.LinksSearchService" ).getByAnyCategoryId( 220519, [ 240682?long ] ) />


  <script type="text/javascript">
    $(document).ready(function(){
      $('[id^="bookmark"]').click(function(){
            $('#'+$(this).attr("id")+' .bookmark-container .link-details section').toggleClass('showdetails');
      });
    });

    function searchFilter() {
      var input, filter, currentBookMarkList, currentList, currentText, i;
      input = document.getElementById("search-filter");
      filter = input.value.toUpperCase();
      currentBookMarkList = document.querySelectorAll("[id^='bookmark']");

      currentList = document.getElementById("all-bookmark-list");
      currentText = currentList.getElementsByClassName("link-details");

      for (i = 0; i < currentText.length; i++) {
        contents = currentText[i].getElementsByTagName("section")[0];
        if (contents) {
          if (contents.innerHTML.toUpperCase().indexOf(filter) > -1) {
            currentBookMarkList[i].style.display = "";
          } else {
            currentBookMarkList[i].style.display = "none";
          }
        }
      }
    }

    var datas = ${links};
    var contents = datas.hits.hits;
    for (var i = 0; i < contents.length; i++) {
      var title = contents[i]._source.title_en_AU;
      var classid = "ddm__keyword__" + contents[i]._source.classTypeId + "__URL_en_AU" ;
      var urls = contents[i]._source[classid];
      var description= '';
      var contactDetails= '';

      $('#all-bookmark-list ul').append('<li id=\"bookmark6\" class=\"bookmark col-md-4 col-sm-6 col-xs-12\"><div class=\"bookmark-container\"><div class=\"link-details\"><span><a href=\"'+urls+'\" target=\"_blank\">'+title+'</a></span><section>'+description+'<p class="contact">'+contactDetails+'</p></section></div><button class=\"bookmark-add pull-right\"></button></div></li>');

    }
  </script>
