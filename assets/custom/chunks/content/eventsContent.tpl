<div class="container">
    <div class="row">
        <h3>
            [[*pagetitle]]
        </h3>
    </div>
</div>
<div class="container">
    <div class="row flex">
        <div class="col s1 valign-wrapper">
            [[$sidenav]]
            <a href="#" data-target="slide-out" class="sidenav-trigger"><i
                class="material-icons" style="pointer-events: none">settings</i></a>
        </div>
        <div class="col s11">
            <form>
                <div class="input-field">
                  <input id="search" class="autocomplete" type="search" required>
                  <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                </div>
            </form>
        </div>
    </div>
    <div id="events-container" class="row">
        [[!pdoPage?
            &element=`getTickets`
            &tpl=`eventsListItem`
            &tplWrapper=`eventsListOuter`
            &includeContent=`1`
            &includeTVs=`img,date,event_type,age_limit`
            &processTVs=`1`
            &tvFilters=`[[!eventsFilter]]`
        ]]
    </div>
</div>