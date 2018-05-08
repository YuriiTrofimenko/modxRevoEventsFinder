<div class="container">
    <div class="row">
        <h3>
            [[*pagetitle]]
        </h3>
    </div>
</div>
<div id="events-container">
    [[!pdoPage?
        &element=`getTickets`
        &tpl=`eventsListItem`
        &tplWrapper=`eventsListOuter`
        &includeContent=`1`
        &includeTVs=`img,date,event_type`
        &processTVs=`1`
    ]]
</div>
[[--!pdoPage?
    &element=`getTickets`
    &tpl=`eventsListItem`
    &tplWrapper=`eventsListOuter`
    &includeContent=`1`
    &includeTVs=`img,date,event_type`
    &processTVs=`1`
]]
[[--!+page.nav]]
            