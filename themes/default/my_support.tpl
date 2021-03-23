<script type="text/javascript">
$(document).ready(function () {
    $("#checkboxalldelete").click(function () {
        var checked_status = this.checked
        $(".deleteid").each(function () {
            this.checked = checked_status;
        });
    });
});

$(document).ready(function () {
    $("#checkboxallclose").click(function () {
        var checked_status = this.checked
        $(".closeid").each(function () {
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
		<li><a href="#new" data-toggle="tab">{L_3500_1015439h}</a></li>
	</ul>
	<div class="tab-content">
		<div class="tab-pane well tab-pane fade in" id="new">
			<form name="submite_new_ticket" id="form1" method="post" class="form-horizontal" action="{SITEURL}support" enctype="multipart/form-data">
		    	<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
		    	<div class="control-group">
		      		<label class="control-label" for="to">{L_241}:</label>
		      		<div class="controls" style="margin-top:5px">{L_3500_1015436}</div>
		    	</div>
		    	<div class="control-group">
		      		<label class="control-label" for="subject">{L_332}:</label>
		      		<div class="controls">
		        		<input name="subject" maxlength="75" type="text" size="60" value="{SUBJECT}" id="subject" maxlength="50">
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

		<div class="tab-pane tab-pane fade in active" id="submitted">
			<form action="{SITEURL}support" method="post" name="deletemessages" enctype="multipart/form-data">
		    	<input type="hidden" name="csrftoken" value="{_CSRFTOKEN}">
		    	<table class="table table-bordered table-condensed table-striped">
			      	<thead>
			        	<tr>
			          		<th width="15%">{L_3500_1015439d}</th>
			          		<th width="30%">{L_332}</th>
			          		<th>{L_3500_1015439e}</th>
			          		<th width="15%">{L_3500_1015439f}</th>
			          		<th width="18%">{L_3500_1015439g}</th>
			          		<th><small><span class="muted">{L_678}</span></small><br>
			            		<input type="checkbox" name="" id="checkboxallclose" value="">
			            	</th>
			          		<th><small><span class="muted">{L_008}</span></small><br>
			            		<input type="checkbox" name="" id="checkboxalldelete" value="">
			            	</th>
			        	</tr>
			      	</thead>
			      	<tbody>
			        	<!-- IF MSGCOUNT eq 0 -->
			        	<tr>
			          		<td colspan="7">{L_3500_1015439r}</td>
			        	</tr>
			        	<!-- ELSE -->
			        	<!-- BEGIN ticket -->
			        	<tr>
			          		<td><small><span class="muted">{ticket.CREATED}</span></small></td>
			          		<td><a href="{SITEURL}support-{ticket.TICKET_ID}">{ticket.TICKET_TITLE}</a></td>
			          		<td>{ticket.LAST_UPDATE_USER}</td>
			          		<td><!-- IF ticket.TICKET_STATUS --> <span style="color:green"><b>{L_3500_1015439a}</b></span><!-- ELSE --><span style="color:red"><b>{L_3500_1015439b}</b></span><!-- ENDIF --></td>
			          		<td>{ticket.LAST_UPDATED_TIME}</td>
			          		<!-- IF ticket.TICKET_STATUS -->
			          		<td style="text-align:center">
			          			<input type="checkbox" name="closeid[]" class="closeid" value="{ticket.TICKET_ID}">
			          		</td>
			          		<!-- ELSE -->
			          		<td></td>
			          		<!-- ENDIF -->
			          		<td style="text-align:center">
			          			<input type="checkbox" name="deleteid[]" class="deleteid" value="{ticket.TICKET_ID}">
			          		</td>
			        	</tr>
			        	<!-- END ticket -->
			        	<!-- ENDIF -->
			      	</tbody>
		    	</table>
		    	<div align="right">
		      		<input class="btn btn-primary" type="submit" name="submit" value="{L_071}">
		    	</div>
			</form>
		</div>
	</div>

<!-- INCLUDE user_menu_footer.tpl -->
