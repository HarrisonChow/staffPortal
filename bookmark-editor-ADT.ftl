<#assign journalArticleLocalService = serviceLocator.findService("com.liferay.journal.service.JournalArticleLocalService") />
<#assign journalArticleResourceLocalService = serviceLocator.findService("com.liferay.journal.service.JournalArticleResourceLocalService") />
<#assign dateFormat = "dd MMM yyyy - HH:mm" />

<style>
    #bookmark-popup {
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
    #bookmark-popup hr {
        margin: 10px -50px;
        border: 0;
        border-top: 1px solid #ccc;
    }

    #bookmark-popup .home {
        background-color: #FAFAFA;
        padding-top: 6rem;
        border: solid 1px #DBDBDB;
        border-top: 0;
        width: 80%;
        margin-left: auto;
        margin-right: auto;
    }
    #bookmark-popup .bookmark {
        background-color: #FAFAFA;
        border: solid 1px #DBDBDB;
        width: 80%;
        margin-left: auto;
        margin-right: auto;
        box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
    }
    #bookmark-popup .header {
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

    #bookmark-popup .content, #bookmark-popup .container {
        background: #FFFFFF;
        width: 100%;
        padding-bottom: 15px;
        min-width: 100%;
    }

    .bookmark .input-style {
        border-radius: 4px;
        background-color: #ffffff;
        border: solid 1px #869CAF;
        width: 100%;
        height: 42px;
        padding-left: 15px;
        margin: 10px 0;
    }
    .bookmark .select-input-style {
        border-radius: 4px;
        background-color: #ffffff;
        border: solid 1px #869CAF;
        width: 50%;
        height: 42px;
        padding-left: 15px;
        margin: 10px 0;
    }
    .bookmark textarea:focus, .bookmark input:focus, .bookmark .dropdown .btn{
        outline: none;
    }
    .bookmark textarea {
        padding-left: 2rem;
    }
    .bookmark .bookmark-text {
        width: 100%;
        height: 100px;
        border-radius: 5px;
        border: solid 1px #869CAF;
    }
    #bookmark-popup #root {
      margin-bottom: 150px;
    }

    #root .donationForm .container .col-sm-2 {
      padding: 10px;
    }

    .bookmark .btn-group > .btn, .bookmark .btn-group-vertical > .btn {
      float: none;
    }
    .bookmark .dropdown, .bookmark .dropdown-toggle {
      display: inline;
    }
    .bookmark .dropdown .btn {
      line-height: 24px !important;
      border-width: 1px;
    }
    .bookmark input[type="radio"], input[type="checkbox"]{
      margin-top:10px;
    }

    #bookmark-popup #x {
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
    #bookmark-popup #x:hover {
        background: #F05A1E;
    }
    #bookmark-popup #x:focus, .button:focus, [type="submit"]:focus {
       outline: none;
    }
    #bookmark-popup .btn-container {
      margin-top:20px;
    }



    @media (min-width: 1200px){
        #bookmark-popup .container {
            min-width: 100%;
            max-width: 100%;
        }
    }
    @media (min-width: 992px){
        #bookmark-popup .container {
            min-width: 100%;
            max-width: 100%;
        }
    }
    @media (min-width: 768px){
        #bookmark-popup .container {
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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.6/jquery.tagsinput.min.css" rel="stylesheet">


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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.6/jquery.tagsinput.min.js"></script>


<script>
    define.amd = define._amd;
</script>

<script type='text/babel'>

    class Bookmark extends React.Component {
        constructor() {
            super();
            this.formDataRetrive = this.formDataRetrive.bind(this);
            this.state = {
                title: '',
                url: '',
                description: '',
                icon: '',
                categories: ['one', 'two'],
                type: '',
                contactIds: ['id0'],
                currentContactForm:[],
                contactsData: [],
                errors: false,
            };
        }

        addContact(){
            const contactIds = this.state.contactIds;
            const id = contactIds.length ? contactIds.length : 0;
            contactIds.push("id" + id);
            this.setState({contactIds});
        }
        removeContact(id){
            const contactIds = this.state.contactIds;
            const currentContactForm = this.state.currentContactForm;
            this.setState({contactIds: contactIds.filter((sessionId) => id !== sessionId)});
            this.setState({currentContactForm: currentContactForm.filter((index) => {return id !== index;})});
        }

        renderContactForms() {
            const contactIds = this.state.contactIds;
            return contactIds.map((id) => {
                let newId = parseInt(id.match(/\d+/)[0], 10)+1;

                if(newId > 0 && newId <= this.state.currentContactForm.length){
                    return(
                          <ContactForm removeContact={() => this.removeContact(id)} currentData = {this.state.currentContactForm[newId-1]} formDataRetrive={this.formDataRetrive} key={id} id={id}/>
                    );
                } else {
                    return(
                        <ContactForm removeContact={() => this.removeContact(id)} formDataRetrive={this.formDataRetrive} key={id} id={id}/>
                    );
                }
            });
        }
        messageInfo(){
            this.setState({errors: true});
            setTimeout(function() { this.setState({errors: false}); }.bind(this), 5000);
        }

        formDataRetrive(info){

            const contactsData = this.state.contactsData;
            contactsData.push(info);
            var finalresult = [];
            var filter = [];
            for (var i=0; i<contactsData.length;i++) {
                if (filter[contactsData[i].id]) continue;
                finalresult.push(contactsData[i]);
                filter[contactsData[i].id] = true;
            }
            this.setState({contactsData: finalresult});
        }

        componentWillMount() {
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

            let title = this.state.title;
            let url = this.state.url;


            if(title ==='' || url === ''){
                this.messageInfo();
            } else {

              let finalContent = "<!--?xml version=\"1.0\"?-->"+
                                  "<root available-locales=\"en_AU\" default-locale=\"en_AU\">"+
                                    "<dynamic-element name=\"BookmarkTitle\" type=\"text\" index-type=\"keyword\" instance-id=\"ncna\">"+
                                      "<dynamic-content language-id=\"en_AU\">"+
                                        "<!--[CDATA["+
                                        datas.title
                                        +"]]-->"+
                                      "</dynamic-content>"+
                                    "</dynamic-element>"+
                                    "<dynamic-element name=\"BookmarkURL\" type=\"boolean\" index-type=\"keyword\" instance-id=\"ssmh\">"+
                                      "<dynamic-content language-id=\"en_AU\">"+
                                        "<!--[CDATA["+
                                        datas.url
                                        +"]]-->"+
                                      "</dynamic-content>"+
                                    "</dynamic-element>"+
                                    "<dynamic-element name=\"BookmarkIcon\" type=\"text\" index-type=\"keyword\" instance-id=\"tvjl\">"+
                                      "<dynamic-content language-id=\"en_AU\">"+
                                        "<!--[CDATA["+
                                        datas.icon
                                        +"]]-->"+
                                      "</dynamic-content>"+
                                    "</dynamic-element>"+
                                    "<dynamic-element name=\"BookmarkCategories\" type=\"text\" index-type=\"keyword\" instance-id=\"yeyh\">"+
                                      "<dynamic-content language-id=\"en_AU\">"+
                                        "<!--[CDATA["+
                                        datas.categories
                                        +"]]-->"+
                                      "</dynamic-content>"+
                                      "<dynamic-element name=\"BookmarkType\" type=\"text\" index-type=\"keyword\" instance-id=\"yeyh\">"+
                                        "<dynamic-content language-id=\"en_AU\">"+
                                          "<!--[CDATA["+
                                          datas.type
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
                   titleMap:{"en_AU": datas.title},
                   descriptionMap: {"en_AU": datas.description},
                   content: finalContent,
                   ddmStructureKey: 220774,
                   ddmTemplateKey: 220782,
                   layoutUuid: '${themeDisplay.getLayout().getUuid()}',
                   displayDateMonth: 0,
                   displayDateDay: 0,
                   displayDateYear: 0,
                   displayDateHour: 0,
                   displayDateMinute: 0,
                   expirationDateMonth: 0,
                   expirationDateDay: 0,
                   expirationDateYear: 0,
                   expirationDateHour: 0,
                   expirationDateMinute: 0,
                   neverExpire: false,
                   reviewDateMonth: 0,
                   reviewDateDay: 0,
                   reviewDateYear: 0,
                   reviewDateHour: 0,
                   reviewDateMinute: 0,
                   neverReview: true,
                   indexable: true,
                   articleURL: datas.url,
               serviceContext: {"scopeGroupId":${scopeGroupId}, "userId": ${themeDisplay.getUserId()}, "workflowAction": 1}
                  },
                setTimeout("location.reload(true);",1000)
                )
            }
          }


        render() {
            return (
            <div className='bookmark'>
                <form className="donationForm" onSubmit={this.handleSubmit.bind(this)}>
                    <ReactBootstrap.Grid>
                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12}>
                                <h2>New Bookmark</h2>
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                                Title
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >
                                <input name ='title' className='input-style' type='text' value={this.state.title} onChange={this.handleChange.bind(this)} />
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                                URL
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >
                                <input name ='url' className='input-style' type='text' value={this.state.url} onChange={this.handleChange.bind(this)} />
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                                Description
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >
                                <textarea name='description' className='bookmark-text' type='text' value={this.state.description} onChange={this.handleChange.bind(this)}/>
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                              ICON
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >

                            <div className='form-group'>
								                <div id="categories-selector"></div>
                                <input id="icon" readOnly className='input-style' name='icon' type='text' value={this.state.icon} onChange={this.handleChange.bind(this)} />
                								<div>
                									<label className='select-application'>
                										Select an ICON
                									</label>
                								</div>
                            </div>

                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                              Categories
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >

                            <div className='form-group'>
                                <div id="categories-selector"></div>
                                <input id="categories" readOnly className='input-style' name='categories' type='text' value={this.state.categories} onChange={this.handleChange.bind(this)}/>
                                <div>
                                  <label className='select-application'>
                                    Select Categories
                                  </label>
                                </div>
                            </div>

                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                              Type
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >

                            <div className='form-group'>
                                <div id="categories-selector"></div>
                                <input id="applicationName" readOnly className='input-style' name='applicationName' type='text' value={this.state.applicationName} onChange={this.handleChange.bind(this)} />
                                <div>
                                  <label className='select-application'>
                                    Select an Type
                                  </label>
                                </div>
                            </div>

                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12}>
                                <h2>Contact Details</h2>
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        { this.renderContactForms() }
                        { this.state.errors && <Message data={this.state}/> }

                        <ReactBootstrap.Row>

                          <ReactBootstrap.Col className="btn-container" xsOffset={3} xs={3}>
                            <ReactBootstrap.ButtonToolbar>
                              <ReactBootstrap.Button onClick={() => {
                                      this.addContact();
                              }}>ADD MORE CONTACT DETAIL</ReactBootstrap.Button>
                            </ReactBootstrap.ButtonToolbar>
                          </ReactBootstrap.Col>

                          <ReactBootstrap.Col className="btn-container" xs={3}>
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



    class ContactForm extends React.Component {
        constructor() {
            super();
            this.state = {
                contactData:{id:'', contactName:'', phone:'', email:''},
            };
        }
        delete() {
            this.props.removeContact();
        }
        changeInput(event) {
            this.state.contactData[event.target.name] = event.target.value;
            this.state.contactData['id'] = this.props.id;
            this.setState({ contactData: this.state.contactData});
            this.props.formDataRetrive(this.state.contactData);
        }

        render() {
            return (
                <div>
                    <ReactBootstrap.Grid>
                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col className="btn-container" xs={12}>
                              <ReactBootstrap.ButtonToolbar>
                                <ReactBootstrap.Button bsStyle="warning pull-right" onClick={ () => this.delete() }>REMOVE</ReactBootstrap.Button>
                              </ReactBootstrap.ButtonToolbar>
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                                Name
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >
                                <input name ='contactName' className='input-style' type='text' onChange={this.changeInput.bind(this)} />
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                                Phone
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >
                                <input name ='phone' className='input-style' type='text' onChange={this.changeInput.bind(this)} />
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                        <ReactBootstrap.Row>
                            <ReactBootstrap.Col xs={12} sm={2}>
                                Email
                            </ReactBootstrap.Col>
                            <ReactBootstrap.Col xs={12} sm={10} >
                                <input name ='email' className='input-style' type='text' onChange={this.changeInput.bind(this)} />
                            </ReactBootstrap.Col>
                        </ReactBootstrap.Row>

                    </ReactBootstrap.Grid>
                </div>
            );
        }
    }

    class Message extends React.Component {
        render() {
            return (
                <div className='message'>
                    <ReactBootstrap.Alert bsStyle="danger">
                        { this.props.data.title ==='' ? <div>Please input title!</div> : '' }
                        { this.props.data.url ==='' ?  <div>Please input URL!</div> : '' }
                    </ReactBootstrap.Alert>
                </div>
            );
        }
    }

    ReactDOM.render(
      <Bookmark />,
      document.getElementById('root')
    );
</script>

  <div id="bookmark-popup">
      <button id="x">
          X
      </button>
     <div id="root" ></div>
  </div>

  <#if entries?has_content>
  	<#list entries as entry>
          <#assign articleResource = journalArticleResourceLocalService.getArticleResource(entry.classPK) />
          <#assign articleId = articleResource.getArticleId() />
  		<#assign
  			entry = entry
  			assetRenderer = entry.getAssetRenderer()
  			entryTitle = htmlUtil.escape(assetRenderer.getTitle(locale))
  			viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, assetRenderer, entry, !stringUtil.equals(assetLinkBehavior, "showFullContent"))

  		/>

  	<a class="bookmark" href="${viewURL}">
  		<div class="asset-abstract">
  			<div class="pull-right">
  				<p class="bookmark-metadata">
  					<@getMetadataField fieldName="publish-date" />
  				</p>
  				<p class="bookmark-metadata">
  					<@getMetadataField fieldName="expiration-date" />
  				</p>
  			</div>
  			<h3 class="asset-title">
  					${entryTitle}
  			</h3>
  			<p class="bookmark-metadata">
  				<@getMetadataField fieldName="author" />
  			</p>
  		</div>
  	</a>
  </#list>
  </#if>
    <button id="add-bookmark">Add New Bookmark</button>



  <script type="text/javascript">
      $('#categories').tagsInput();

      $(function(){
          $("#edit-bookmark").off("click").on("click", function(){
            document.getElementById('bookmark-popup').style.display = "block";
          });
          $("#x").off("click").on("click", function() {
            document.getElementById('bookmark-popup').style.display = "none";
          });
          $("#cancel").off("click").on("click", function() {
            document.getElementById('bookmark-popup').style.display = "none";
          });


          Babel.transformScriptTags();
      });

      $(document).ready(function(){
        AUI().use(
          'liferay-item-selector-dialog',
          'liferay-portlet-url',
          function(A) {
            $("body").on(
              "click",
              ".select-application",
              function(a) {
                var b = this;
                Liferay.Util.selectEntity(
                  {
                    dialog : {
                      constrain : !0,
                      destroyOnHide : !0,
                      modal : !0
                    },
                    eventName : "selectContent",
                    id : "selectContent",
                    title : "Web Content",
                    uri : "/group/control_panel?p_p_id=com_liferay_asset_browser_web_portlet_AssetBrowserPortlet&p_p_lifecycle=0&p_p_state=pop_up&p_p_mode=view&_com_liferay_asset_browser_web_portlet_AssetBrowserPortlet_groupId=0&_com_liferay_asset_browser_web_portlet_AssetBrowserPortlet_selectedGroupIds=${themeDisplay.getUser().getGroupIds()?join(',')}&_com_liferay_asset_browser_web_portlet_AssetBrowserPortlet_typeSelection=com.liferay.journal.model.JournalArticle&_com_liferay_asset_browser_web_portlet_AssetBrowserPortlet_showNonindexable=false&_com_liferay_asset_browser_web_portlet_AssetBrowserPortlet_showScheduled=false&_com_liferay_asset_browser_web_portlet_AssetBrowserPortlet_eventName=selectContent&_com_liferay_asset_browser_web_portlet_AssetBrowserPortlet_subtypeSelectionId=220638"
                  },
                  function(selection) {
                    console.log(selection);
                    var appName = document.getElementById("applicationName");
                    appName.value = selection.assettitle;
                    doEvent(appName, 'click');

                    var appPK = document.getElementById("applicationPK");
                    appPK.value = selection.assetclasspk;
                    doEvent(appPK, 'click');
                  }
                )
                $("iframe").ready(
                  function() {
                    setTimeout(
                      checkIframe("#_com_liferay_asset_browser_web_portlet_AssetBrowserPortlet_menuItem",0)
                      ,100);
                  }
                );
              }
            );
          }
        );
      });

      function checkIframe(itmName, nbCalls) {

        function timeoutHandler(){
        if (nbCalls < 100) {
          nbCalls += 1;
          try {
            var itm = $('iframe')[0].contentWindow.$(itmName);
            console.log("Itm " + itm);
            if (itm.length) {
              console.log("Found " + itm);
              itm.hide();
            } else {
              console.log("not found " + nbCalls);
              setTimeout( timeoutHandler, 200 );
            }
          }
          catch (ex) {
            console.log("not found ex " + nbCalls);
            setTimeout( timeoutHandler, 200 );
          }
        }
        }

        timeoutHandler();

      }

      function doEvent(obj, event) {
        var event = new MouseEvent('click', {
          'view' : window,
          'bubbles' : true,
          'cancelable' : false
        });
        obj.dispatchEvent(event);
      }
      </script>

      <#macro getMetadataField fieldName>
        <span class="metadata-entry metadata-${fieldName}">

          <#if stringUtil.equals(fieldName, "author")>
            <@liferay.language key="by" /> ${htmlUtil.escape(portalUtil.getUserName(assetRenderer.getUserId(), assetRenderer.getUserName()))}
          <#elseif stringUtil.equals(fieldName, "create-date")>
            Created ${dateUtil.getDate(entry.getCreateDate(), dateFormat, locale)}
          <#elseif stringUtil.equals(fieldName, "expiration-date")>
            Expiring ${dateUtil.getDate(entry.getExpirationDate(), dateFormat, locale)}
          <#elseif stringUtil.equals(fieldName, "modified-date")>
            Last Modified ${dateUtil.getDate(entry.getModifiedDate(), dateFormat, locale)}
          <#elseif stringUtil.equals(fieldName, "publish-date")>
            Published ${dateUtil.getDate(entry.getPublishDate(), dateFormat, locale)}
          </#if>
        </span>
      </#macro>
