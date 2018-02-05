<#assign journalArticleLocalService = serviceLocator.findService("com.liferay.journal.service.JournalArticleLocalService") />
<#assign journalArticleResourceLocalService = serviceLocator.findService("com.liferay.journal.service.JournalArticleResourceLocalService") />

<style>
    #notification-popup {
        width: 100%;
        height: 100%;
        opacity: 1;
        top: 65px;
        left: 0;
        display: none;
        position: fixed;
        background-color: rgba(255, 255, 255, 0.0);
        overflow: auto;
        z-index:99;
    }
    #notification-popup hr {
        margin: 10px -50px;
        border: 0;
        border-top: 1px solid #ccc;
    }

    #notification-popup .home {
        background-color: #FAFAFA;
        padding-top: 6rem;
        border: solid 1px #DBDBDB;
        border-top: 0;
        width: 80%;
        margin-left: auto;
        margin-right: auto;
    }
    #notification-popup .notification {
        background-color: #FAFAFA;
        border: solid 1px #DBDBDB;
        width: 80%;
        margin-left: auto;
        margin-right: auto;
        box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
    }
    #notification-popup .header {
        width: 80%;
        height: 50px;
        padding-top: 8px;
        margin-left: auto;
        margin-right: auto;
        background-color: #FFFFFF;
        border: solid 1px #DBDBDB;
        border-bottom: 0;
        text-align: center;
    }

    #notification-popup .content, #notification-popup .container {
        background: #FFFFFF;
        width: 100%;
        padding-bottom: 15px;
        padding: 2%;
        min-width: 100%;
    }

    .notification .input-style {
        border-radius: 4px;
        background-color: #ffffff;
        border: solid 1px #869CAF;
        width: 100%;
        height: 42px;
        padding-left: 15px;
        margin: 10px 0;
    }
    .notification .select-input-style {
        border-radius: 4px;
        background-color: #ffffff;
        border: solid 1px #869CAF;
        width: 50%;
        height: 42px;
        padding-left: 15px;
        margin: 10px 0;
    }
    .notification textarea:focus, .notification input:focus, .notification .dropdown .btn{
        outline: none;
    }
    .notification textarea {
        padding-left: 2rem;
    }
    .notification .notification-text {
        width: 100%;
        height: 185.9px;
        border-radius: 5px;
        border: solid 1px #869CAF;
    }

    #root .donationForm .container .col-sm-2 {
      padding: 10px;
    }

    #root .donationForm .container .btn-toolbar .btn{
      width: 120px !important;
    }
    .notification .btn-group > .btn, .notification .btn-group-vertical > .btn {
      float: none;
    }
    .notification .dropdown, .notification .dropdown-toggle {
      display: inline;
    }
    .notification .dropdown .btn {
      line-height: 24px !important;
      border-width: 1px;
    }
    .notification input[type="radio"], input[type="checkbox"]{
      margin-top:10px;
    }

    #notification-popup #x {
        position: absolute;
        background: #787776;
        color: #FFFFFF;
        font-weight: 600;
        top: 0;
        right: 10%;
        height: 30px;
        width: 30px;
        border-radius: 5px;
        border: 1px solid #787776;
    }
    #notification-popup #x:hover {
        background: #F05A1E;
    }
    #notification-popup #x:focus, .button:focus, [type="submit"]:focus {
       outline: none;
    }
    #notification-popup .btn-container {
      margin-top:20px;
    }



    @media (min-width: 1200px){
        #notification-popup .container {
            min-width: 100%;
            max-width: 100%;
        }
    }
    @media (min-width: 992px){
        #notification-popup .container {
            min-width: 100%;
            max-width: 100%;
        }
    }
    @media (min-width: 768px){
        #notification-popup .container {
            min-width: 100%;
            max-width: 100%;
        }
    }
    @media only screen and (max-width: 992px) and (min-width: 576px){

    }
    @media (max-width: 575px){

    }

    </style>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.10.0/jquery.timepicker.min.css" />

<script>
    define._amd = define.amd;
    define.amd = false;
</script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/babel-standalone/6.25.0/babel.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/react/15.6.1/react.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/react/15.6.1/react-dom.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/react-bootstrap/0.31.1/react-bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.10.0/jquery.timepicker.min.js"></script>

<script>
    define.amd = define._amd;
</script>

<script type='text/babel'>

    class Notification extends React.Component {
        constructor() {
            super();
            this.state = {
                notificationTitle: '',
                notificationText: '',
                urlLearnMore: '',
                application: '',
                homepageAlert: false,
                publishDate: '',
                expiryDate:'',
                publishTime: '',
                expiryTime: ''
            };
        }
        datePicker(element) {
            var thiscomponent = this;
            $(element).datepicker().on("input change", function (e) {
                thiscomponent.setState({[e.target.name]: e.target.value});
            });
        }

       timePicker(element) {
           var thiscomponent = this;
           $(element).timepicker({timeFormat: "H:i"}).on("input change", function (e) {
               thiscomponent.setState({[e.target.name]: e.target.value});
           });
        }

        handleChange(e) {
            const target = e.target;
            const value = target.type === 'checkbox' ? target.checked : target.value;
            const name = target.name;
            this.setState({[name]: value});
        }

        handleSubmit(event){
            event.preventDefault();
            let datas = this.state;
            let publishMonth = parseInt(datas.publishDate.split('/')[0]);
            let publishDay = parseInt(datas.publishDate.split('/')[1]);
            let publishYear = parseInt(datas.publishDate.split('/')[2]);
            let publishHour = parseInt(datas.publishTime.split(':')[0]);
            let publishMin = parseInt(datas.publishTime.split(':')[1]);
            let expirationMonth = parseInt(datas.expiryDate.split('/')[0]);
            let expirationDay = parseInt(datas.expiryDate.split('/')[1]);
            let expirationYear = parseInt(datas.expiryDate.split('/')[2]);
            let expirationHour = parseInt(datas.expiryTime.split(':')[0]);
            let expirationMin = parseInt(datas.expiryTime.split(':')[1]);

      			let finalContent = "<!--?xml version=\"1.0\"?-->"+
                                "<root available-locales=\"en_AU\" default-locale=\"en_AU\">"+
                                  "<dynamic-element name=\"LearnMoreURL\" type=\"text\" index-type=\"keyword\" instance-id=\"ncna\">"+
                                    "<dynamic-content language-id=\"en_AU\">"+
                                      "<!--[CDATA["+
                                      datas.urlLearnMore
                                      +"]]-->"+
                                    "</dynamic-content>"+
                                  "</dynamic-element>"+
                                  "<dynamic-element name=\"HomePageAlert\" type=\"boolean\" index-type=\"keyword\" instance-id=\"ssmh\">"+
                                    "<dynamic-content language-id=\"en_AU\">"+
                                      "<!--[CDATA["+
                                      datas.homepageAlert
                                      +"]]-->"+
                                    "</dynamic-content>"+
                                  "</dynamic-element>"+
                                  "<dynamic-element name=\"ApplicationName\" type=\"text\" index-type=\"keyword\" instance-id=\"tvjl\">"+
                                    "<dynamic-content language-id=\"en_AU\">"+
                                      "<!--[CDATA["+
                                      datas.application
                                      +"]]-->"+
                                    "</dynamic-content>"+
                                  "</dynamic-element>"+
                                  "<dynamic-element name=\"ApplicationPK\" type=\"text\" index-type=\"keyword\" instance-id=\"yeyh\">"+
                                    "<dynamic-content language-id=\"en_AU\">"+
                                      "<!--[CDATA["+
                                      applicationPK
                                      +"]]-->"+
                                    "</dynamic-content>"+
                                  "</dynamic-element>"+
                                "</root>";

      			Liferay.Service(
      			   '/journal.journalarticle/add-article',
      			   {
      				   groupId: ${scopeGroupId},
      				   folderId: 0,
      				   classNameId: 0,
      				   classPK: 0,
      				   articleId: '',
      				   autoArticleId: true,
      				   titleMap:{"en_AU": this.state.title},
      				   descriptionMap: {"en_AU": ""},
      				   content: finalContent,
      				   ddmStructureKey: 63372,
      				   ddmTemplateKey: 438832,
      				   layoutUuid: '9e61a2af-eca8-f45b-eede-62bf0c4a8822',
      				   displayDateMonth: publishMonth,
      				   displayDateDay: publishDay,
      				   displayDateYear: publishYear,
      				   displayDateHour: publishHour,
      				   displayDateMinute: publishMin,
      				   expirationDateMonth: expirationMonth,
      				   expirationDateDay: expirationDay,
      				   expirationDateYear: expirationYear,
      				   expirationDateHour: expirationHour,
      				   expirationDateMinute: expirationMin,
      				   neverExpire: true,
      				   reviewDateMonth: 0,
      				   reviewDateDay: 0,
      				   reviewDateYear: 0,
      				   reviewDateHour: 0,
      				   reviewDateMinute: 0,
      				   neverReview: true,
      				   indexable: true,
      				   articleURL: ''
      			    },
      			    function(obj) {
      				    console.log(obj);
      					let url = '/-/' + obj.urlTitle;
      				    setTimeout(function(){ window.location.href = url; },1000);
      			    }
      		    )
          }


        render() {
            return (
            <div className='notification'>
                <form className="donationForm" onSubmit={this.handleSubmit.bind(this)}>
                    <ReactBootstrap.Grid>
                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                                Notification Title <p>(max 200 char)</p>
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >
                                <input name ='notificationTitle' maxLength='200' className='input-style' type='text' onChange={this.handleChange.bind(this)} />
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                                Notification Text <p>(max 400 char)</p>
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >
                                <textarea name='notificationText' maxLength='400' className='notification-text' type='text' onChange={this.handleChange.bind(this)}/>
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                                URL to "Learn more"
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >
                                <input className='input-style' name='urlLearnMore' type='text' onChange={this.handleChange.bind(this)} />
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                              Application
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >

                            <div className='form-group'>
                              <select className='form-control' name='application' value={this.state.application} onChange={this.handleChange.bind(this)}>
                                <option>application 1</option>
                                <option>application 2</option>
                                <option>application 3</option>
                                <option>application 4</option>
                              </select>
                            </div>

                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                              Home page Alert
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >
                                <input type='checkbox' name='homepageAlert' checked={this.state.homepageAlert} onChange={this.handleChange.bind(this)} />
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                              Publish Date
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={4}>
                                <input ref={this.datePicker.bind(this)} className='input-style' name='publishDate' type='text'/>
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={2}>
                              Expiry Date
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={4}>
                                <input ref={this.datePicker.bind(this)} className='input-style' type='text' name='expiryDate'/>
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                              Publish Time
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={4}>
                                <input ref={this.timePicker.bind(this)} className='input-style' name='publishTime' type='text'/>
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={2}>
                              Expiry Time
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={4}>
                                <input ref={this.timePicker.bind(this)} className='input-style' type='text' name='expiryTime'/>
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                          <ReactBootstrap.Col className="btn-container" xsOffset={4} xs={2}>
                            <ReactBootstrap.ButtonToolbar>
                              <ReactBootstrap.Button id="cancel">CANCEL</ReactBootstrap.Button>
                            </ReactBootstrap.ButtonToolbar>
                          </ReactBootstrap.Col>
                          <ReactBootstrap.Col className="btn-container" xs={2}>
                            <ReactBootstrap.ButtonToolbar>
                              <ReactBootstrap.Button type="submit" value="Submit" bsStyle="primary">SAVE</ReactBootstrap.Button>
                            </ReactBootstrap.ButtonToolbar>
                          </ReactBootstrap.Col>
                        </ReactBootstrap.Row>
                    </ReactBootstrap.Grid>
                </form>
            </div>
            );
        }
    }

    ReactDOM.render(
      <Notification />,
      document.getElementById('root')
    );
</script>

  <div id="notification-popup">
      <button id="x">
          X
      </button>
     <div id="root" ></div>
  </div>
<#if entries?has_content>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Title</th>
    		<th>Version</th>
    		<th>Application</th>
    		<th>Homepage Alert</th>
    		<th>Publish Date</th>
    		<th>Expiry Date</th>
    		<th>Created</th>
    		<th>Last Modified</th>
    		<th></th>
    		<th></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>test1</td>
        <td>1</td>
        <td></td>
        <td>true</td>
        <td>01-04-2013</td>
        <td>01-04-2017</td>
        <td>John <p>04-10-2013</p></td>
        <td>Doe <p>14-11-2015</p></td>
        <td><button type="button" class="btn btn-default" id="edit-notification">Edit</button></td>
        <td><button type="button" class="btn btn-default">Delete</button></td>
      </tr>
      <tr>
        <td>test2</td>
        <td>2</td>
        <td></td>
        <td>true</td>
        <td>01-04-2013</td>
        <td>01-04-2017</td>
        <td>John <p>04-10-2013</p></td>
        <td>Doe <p>14-11-2015</p></td>
        <td><button type="button" class="btn btn-default">Edit</button></td>
        <td><button type="button" class="btn btn-default">Delete</button></td>
      </tr>
      <tr>
        <td>test3</td>
        <td>3</td>
        <td></td>
        <td>true</td>
        <td>01-04-2013</td>
        <td>01-04-2017</td>
        <td>John <p>04-10-2013</p></td>
        <td>Doe <p>14-11-2015</p></td>
        <td><button type="button" class="btn btn-default">Edit</button></td>
        <td><button type="button" class="btn btn-default">Delete</button></td>
      </tr>

      <#list entries as curEntry>
          <#assign articleResource = journalArticleResourceLocalService.getArticleResource(curEntry.classPK) />
          <#assign articleId = articleResource.getArticleId() />
          ${journalArticleLocalService.getArticleDisplay(curEntry.groupId, articleId, templateKey, "view", locale,themeDisplay).getContent()}
      </#list>
    </tbody>
  </table>
</#if>

  <script type="text/javascript">
      $(function(){
          $("#edit-notification").off("click").on("click", function(){
            document.getElementById('notification-popup').style.display = "block";
          });
          $("#x").off("click").on("click", function() {
            document.getElementById('notification-popup').style.display = "none";
          });
          $("#cancel").off("click").on("click", function() {
            document.getElementById('notification-popup').style.display = "none";
          });


          Babel.transformScriptTags();
      });

  </script>
