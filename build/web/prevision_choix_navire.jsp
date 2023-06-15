<%@ include file = "header.html" %>
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="row align-items-center my-4">
                <div class="col">
                    <h2 class="h3 mb-0 page-title">Prevision - Choisissez votre navire</h2>
                </div>
            </div>
            <div class="row">
                <% for(int i = 0; i < 5; i++) { %>
                <div class="col-md-3">
                    <div class="card shadow mb-4">
                        <a href="prevision.jsp?<%= i %>">
                            <div class="card-body text-center">
                                <div class="avatar avatar-lg mt-4">

                                </div>
                                <div class="card-text my-2">
                                    <strong class="card-title my-0">Royal Navy</strong>
                                    <p class="small text-muted mb-0">Petrolier</p>
                                    <p class="small"><span class="badge badge-light text-muted">England, UK</span></p>
                                </div>
                            </div> <!-- ./card-text -->
                        </a>
                    </div>
                </div> <!-- .col -->
                <% } %>
                <div class="col-md-3">
                    <div class="card shadow mb-4"  style="height: 85%; display: flex; flex-direction: column; justify-content: center;">
                        <a href="#">
                            <div class="card-body text-center">
                                <div class="card-text my-2">
                                    <strong class="card-title my-0">Ajouter un navire</strong>
                                </div>
                            </div> <!-- ./card-text -->
                        </a>
                    </div>
                </div> <!-- .col -->
            </div> <!-- .row -->
        </div> <!-- .col-12 -->
    </div> <!-- .row -->
</div>
<%@ include file = "footer.html" %>