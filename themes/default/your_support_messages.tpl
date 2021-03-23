<script type="text/javascript">
$(document).ready(function () {
    $("#checkboxall").click(function () {
        var checked_status = this.checked
        $(".deleteid").each(function () {
            this.checked = checked_status;
        });
    });
});

$(".form1").submit(function () {
    if ($(".to").val() == "") {
        return false;
    }
    if ($(".subject").val() == "") {
        return false;
    }
    if ($(".message").val() == "") {
        return false;
    }
    return true;
});
</script>
<div class="row">
<!-- INCLUDE u_header.tpl -->
<div class="span9">
  	<legend>{L_3500_1015432}</legend>
  	<!-- IF B_ISERROR -->
  	<div class="alert">
    	<button type="button" class="close" data-dismiss="alert">&times;</button>
    	{ERROR} 
    </div>
  	<!-- ENDIF -->
	<ul class="nav nav-tabs">
		<li class="active"><a href="#submitted" data-toggle="tab">{L_3500_1015439i}</a></li>
		<!-- IF B_OPEN -->
		<li><a href="#reply" data-toggle="tab">{L_3500_1015439j}</a></li>
		<!-- ENDIF -->
	</ul>
	<!-- IF B_OPEN -->
	<div class="tab-content">
		<div class="tab-pane well tab-pane fade in" id="reply">
			<form name="submite_new_ticket" id="form1" method="post" class="form-horizontal" action="{SITEURL}support-{ID}" enctype="multipart/form-data">
		    	<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
		    	<input type="hidden" name="reply" value="reply_back">
		    	<div class="control-group">
		      		<label class="control-label" for="to">{L_241}:</label>
		      		<div class="controls" style="margin-top:5px">{L_3500_1015436}</div>
		    	</div>
		    	<div class="control-group">
		      		<label class="control-label" for="subject">{L_332}:</label>
		      		<div class="controls">
		      			<input type="hidden" name="subject" value="{SUBJECT}">{SUBJECT}
		      		</div>
		    	</div>
		    	<div class="control-group">
		      		<label class="control-label" for="message">{L_333}:</label>
		      		<div class="controls">{MESSAGE}</div>
		    	</div>
		    	<div class="form-actions">
		      		<input name="submit" type="submit" value="{L_007}" class="btn btn-primary">
		    	</div>
			</form>
		</div>
		<!-- ENDIF -->
		<div class="tab-pane tab-pane fade in active" id="submitted">
			<form name="close_ticket" id="form1" method="post" class="form-horizontal" action="{SITEURL}support" enctype="multipart/form-data">
				<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
				<table class="table table-bordered table-condensed table-striped">
				    <thead>
				        <tr>
				          	<th width="15%">{L_3500_1015439d}</th>
				          	<th width="30%">{L_332}</th>
				          	<th>{L_3500_1015439e}</th>
				          	<th width="15%">{L_3500_1015439f}</th>
				          	<th width="18%">{L_3500_1015439g}</th>
				          	<!-- IF B_OPEN -->
				          	<th></th>
				          	<!-- ENDIF -->
				       	</tr>
				  	</thead>
				    <tbody>
				       	<!-- IF MSGCOUNT eq 0 -->
				        <tr>
				          	<td colspan="5">{L_2__0029}</td>
				        </tr>
				        <!-- ELSE -->
				        <!-- BEGIN ticket -->
				        <tr>
				          	<td><small><span class="muted">{ticket.CREATED}</span></small></td>
				          	<td>{ticket.TICKET_TITLE}</td>
				          	<td>{ticket.LAST_UPDATE_USER}</td>
				          	<td><!-- IF ticket.TICKET_STATUS --> <span style="color:green"><b>{L_3500_1015439a}</b></span><!-- ELSE --><span style="color:red"><b>{L_3500_1015439b}</b></span><!-- ENDIF --></td>
				          	<td>{ticket.LAST_UPDATED_TIME}</td>
				          	<!-- IF ticket.TICKET_STATUS -->
				          	<td style="text-align:center">
				          		<input type="hidden" name="closeid[]" class="closeid" value="{ticket.TICKET_ID}">
				          		<input class="btn btn-primary" type="submit" name="submit" value="{L_678}">
				          	</td>
				          	<!-- ENDIF -->
				        </tr>
				        <!-- END ticket -->
				        <!-- ENDIF -->
				    </tbody>
			  	</table>
			</form>

		    	
		    	<table class="table table-bordered table-condensed table-striped">
			      	<thead>
			        	<tr>
			          		<th width="15%">{L_240}</th>
			          		<th>{L_3500_1015438}</th>
			        	</tr>
			      	</thead>
			      	<tbody>
			        	<!-- IF MSGCOUNT eq 0 -->
			        	<tr>
			          		<td colspan="5">{L_2__0029}</td>
			        	</tr>
			        	<!-- ELSE -->
			        	<!-- BEGIN ticket_mess -->
			        	<tr>
			          		<td>{ticket_mess.LAST_USER}<br><small><span class="muted">{ticket_mess.CREATED}</span></small></td>
			          		<td>{ticket_mess.TICKET_MESSAGE}</td>
			        	</tr>
			        	<!-- END ticket_mess -->
			        	<!-- ENDIF -->
			      	</tbody>
		    	</table>
		</div>
	</div>

<!-- INCLUDE user_menu_footer.tpl -->