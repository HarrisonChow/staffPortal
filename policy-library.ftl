
    <style>
    .policy-library {
      border-radius: 5px;
      background-color: #fafafa;
      border: solid 1px #ededed;
      margin: 20px;
      min-height: 220px;
    }
    .policy-library .policy-library-title {
      font-family: Montserrat;
    	font-size: 20px;
    	font-weight: 300;
    	color: #0e3f51;
      padding: 15px 25px 0 25px;
    }
    .policy-library .search {
      padding: 0 25px;
    }
    .policy-library h5 {
      font-family: Montserrat;
      font-size: 14px !important;
      color: #343441;
    }
    .policy-library .row {
      margin-left: 0;
      margin-right: 0;
    }
    .policy-library .col-xs-12{
      font-size: 14px;
      color: #343441;
      padding-left: 0;
      padding-right: 0;
    }
    .policy-library .input-style {
      width: 100%;
      height: 34px;
      margin-top: 13px;
      padding-left: 1.5rem;
      border-radius: 100px;
      background-color: rgba(255, 255, 255, 0.85);
      border: solid 1px #ededed;
    	font-size: 13px !important;
    	font-weight: 300;
    	color: #343441;
      font-family: Montserrat, "FontAwesome";
    }
    .policy-library .seach-btn {
      position: absolute;
      border-radius: 100px !important;
      background: #fff !important;
      border: solid 1px #ededed !important;
      width: 77px;
      right:4px;
      top: 16px;
      height: 28px;
      font-size: 13px !important;
      color:#000 !important;
      font-weight: 400 !important;
      padding: 0 !important;
    }
    .policy-library .seach-btn:hover {
      color:#000 !important;
    }
    .policy-library .seach-btn:focus, .policy-library .input-style:focus {
      outline:0;
    }
    </style>

    <div class="policy-library">
      <div class="row policy-library-title">
        Policy library
        <i class="fa fa-cogs pull-right" aria-hidden="true"></i>
      </div>
      <hr/>
      <div class="row search">
        <h5>Search for DoE policies and related documents:</h5>
        <form>
          <div class="col-xs-12">
            <div>
              <input class='input-style col-xs-12' id="search-policies" placeholder='&#xF002; Enter the keyword here...'/>
            </div>
            <div>
              <input class="seach-btn" type="button" onclick="myFunction()" value="search">
            </div>
          </div>
        </form>
      </div>
    </div>

  <script type="text/javascript">
      function myFunction() {
        var keyword = document.getElementById('search-policies').value
        window.open('https://education.nsw.gov.au/policy-library/search?q='+keyword+'','_blank');
      }
  </script>
