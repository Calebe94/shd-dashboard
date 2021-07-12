<div class="container grid grid-simple-col-3">
<div id="chart-01" class="hero starter-chart"></div>
<div id="chart-02" class="starter-chart"></div>
<div id="chart-03" class="starter-chart"></div>
<div id="chart-04" class="starter-chart"></div>
<div id="chart-05" class="starter-chart"></div>
</div>
<div class="container">
<hr>
<p class="small text-muted">Built with &#9829; by <a href="https://keen.io">Keen IO</a></p>
</div>

<!-- Project Analytics -->
<script type="text/javascript" src="./static/js/keen-analytics.js"></script>
<script>
function toggleMenu() {
  const toggleBtn = document.querySelector('.navbar-toggle');

  toggleBtn.addEventListener('click', (e) => {
    let menu;
    if (e.currentTarget.dataset.target) {
      menu = document.querySelector(e.currentTarget.dataset.target);
    }
    if (menu) menu.classList.toggle('collapsed');
  });
}

window.addEventListener('DOMContentLoaded', toggleMenu);
</script>

