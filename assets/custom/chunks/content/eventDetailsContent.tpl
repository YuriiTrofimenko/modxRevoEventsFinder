<!-- lightbox container hidden with CSS -->
<a href="[[++base_url]][[~[[*id]]]]/#_" class="lightbox" id="lightbox">
	<img src="[[*img]]">
</a>
<div class="container">
	<h4>
        [[*pagetitle]] ([[*age_limit]])
    </h4>
    <div class="row">
    	<div class="col s4 m4 l4 xl4">
	        <div class="card">
		        <div class="card-image">
		        	<a href="[[++base_url]][[~[[*id]]]]/#lightbox">
				  		<img src="[[*img:phpthumbof=`w=300&h=300&zc=1`]]">
					</a>
		        </div>
		        <!-- thumbnail image wrapped in a link -->
		    </div>
        </div>
        <div class="col s8 m8 l8 xl8">
        	<div>Дата: [[*date:strtotime:date=`%d.%m.%Y`]]</div>
        	<hr>
        	<div>
        		<h6>Описание:</h6>
        		<p>[[*content]]</p>
        	</div>
        </div>
    </div>
</div>