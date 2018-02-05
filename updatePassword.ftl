    <style>
      button {
        margin-top: 25px;
      }
      input, select {
        border-radius: 4px;
        background-color: #ffffff;
        border: solid 1px #ededed;
        width: 100%;
        height: 42px;
        padding-left: 15px;
      }
      input:focus, select:focus {
        outline: none;
      }
      label {
        padding-top:25px;
        font-size: 12px;
        font-weight: 600;
        text-align: left;
        color: #343441;
      }
      .cancel-btn, .confirm-btn {
        width: 98px;
        height: 34px;
        border-radius: 100px;
        font-size: 10px;
        font-weight: 600;
        text-align: center;
        padding-top: 10px;
        margin-left: auto;
        margin-right: auto;
      }
      .confirm-btn {
        background-color: #26ca50;
        color: #ffffff;
      }
      .cancel-btn {
        background-color: #E5E5E5;
        color: #000;
      }
      .cancel-btn:hover, .confirm-btn:hover {
        cursor: pointer;
        background-color: rgba(0,0,0,.7);
        color: #ffffff;
      }
      .modal-footer {
        border-top: 0;
        padding-bottom: 25px;
      }
      .modal-header {
        border-bottom: 0;
        padding-bottom: 0;
      }
      .modal-content {
        padding-top: 0;
      }
      .modal-title {
        font-size: 20px;
        font-weight: 300;
        text-align: center;
        color: #0e3f51;
      }
    </style>


    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#update-password">update Password</button>



    <div class="modal fade" id="update-password" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">UPDATE PASSWORD</h4>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-md-offset-1 col-md-10">
                <label for="">CURRENT PASSWORD</label>
              </div>
              <div class="col-md-offset-1 col-md-10">
                <input type="text">
              </div>
              <div class="col-md-offset-1 col-md-10">
                <label for="">NEW PASSWORD</label>
              </div>
              <div class="col-md-offset-1 col-md-10">
                <input type="text">
              </div>
              <div class="col-md-offset-1 col-md-10">
                <label for="">REPEAT PASSWORD</label>
              </div>
              <div class="col-md-offset-1 col-md-10">
                <input type="text">
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <div class="col-xs-6">
              <div class="cancel-btn" data-dismiss="modal">CANCEL</div>
            </div>
            <div class="col-xs-6">
              <div class="confirm-btn">CONFIRM</div>
            </div>
          </div>
        </div>
      </div>
    </div>
