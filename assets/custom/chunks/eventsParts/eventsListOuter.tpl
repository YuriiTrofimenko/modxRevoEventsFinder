<div class="container">
	<div class="row flex">
    	<div class="col s1 valign-wrapper">
			<ul id="slide-out" class="sidenav">
				<li>
					<ul class="collapsible">
						<li>
							<div class="collapsible-header">
								<i class="material-icons">filter_list</i>Фильтр
							</div>
							<div class="collapsible-body">
								<form action="#">
								    <p>
								      <label>
								        <input id="all" name="group1" type="radio" checked />
								        <span>ВСЕ</span>
								      </label>
								    </p>
								    <p>
								      <label>
								        <input id="cinema" name="group1" type="radio" />
								        <span>КИНО</span>
								      </label>
								    </p>
								    <p>
								      <label>
								        <input name="theatre" type="radio" />
								        <span>ТЕАТР</span>
								      </label>
								    </p>
								    <p>
								      <label>
								        <input  id="clubs" name="group1" type="radio" />
								        <span>КЛУБЫ И КОНЦЕРТЫ</span>
								      </label>
								    </p>
								    <p>
								      <label>
								        <input  id="shows" name="group1" type="radio" />
								        <span>ВЫСТАВКИ</span>
								      </label>
								    </p>
								    <p>
								      <label>
								        <input  id="business" name="group1" type="radio" />
								        <span>БИЗНЕС</span>
								      </label>
								    </p>
								    <p>
								      <label>
								        <input  id="sport" name="group1" type="radio" checked />
								        <span>СПОРТ</span>
								      </label>
								    </p>
								    <p>
								      <label>
								        <input  id="free" name="group1" type="radio" checked />
								        <span>FREE</span>
								      </label>
								    </p>
								</form>
							</div>
						</li>
					</ul>
				</li>
			</ul>
			<a href="#" data-target="slide-out" class="sidenav-trigger"><i
				class="material-icons" style="pointer-events: none">settings</i></a>
			</div>
	</div>
    <div class="row flex">
    	[[+output]]
	</div>
</div>