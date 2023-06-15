<%@ include file = "header.html" %>
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="row align-items-center my-4">
                <div class="col">
                    <h2 class="h3 mb-0 page-title">Proposition</h2>
                </div>
            </div>
            <!-- CONTENT -->
            <div class="row my-4">
                <!-- A PROPOS -->
                <div class="col-md-12">
                    <div class="card mb-4 shadow">
                        <div class="card-body my-n3">
                            <div class="row align-items-center">
                                <div class="col-md-6">
                                    <p><h2 class="h2 mb-0 page-title">A propos</h2></p>                                   
                                    <p><h4 class="h4 mb-0 page-title">Royal Navy - Petrolier </h4></p>
                                    <p><h6 class="h6 mb-0">national / international </h6></p>
                                    <p><h5 class="h5 mb-0 page-title">Profondeur : 5 metres</h5></p>
                                    <p><h6 class="h6 mb-0">Client : UK Navy - England</h6></p>
                                </div> <!-- .col -->
                                <div class="col-md-6">
                                    <p><h2 class="h2 mb-0 page-title">Prix estimatif</h2></p>     
                                    <div class="row align-items-center">
                                        <div class="col-md-6 mb-4">
                                            <div class="card shadow border-0">
                                                <div class="card-body">
                                                    <div class="row align-items-center">
                                                        <div class="col-3 text-center">
                                                            <span class="circle circle-sm bg-primary">

                                                            </span>
                                                        </div>
                                                        <div class="col pr-0">
                                                            <p class="small mb-0">National</p>
                                                            <span class="h3 mb-0">20 000 Ar</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> 
                                        <div class="col-md-6 mb-4">
                                            <div class="card shadow border-0">
                                                <div class="card-body">
                                                    <div class="row align-items-center">
                                                        <div class="col-3 text-center">
                                                            <span class="circle circle-sm bg-success-darker">

                                                            </span>
                                                        </div>
                                                        <div class="col pr-0">
                                                            <p class="small mb-0">International</p>
                                                            <span class="h3 mb-0">174 Euro</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                            </div> <!-- .row -->
                        </div> <!-- .card-body -->
                    </div> <!-- .card -->
                </div> <!-- .col-md-->
                <!-- FIN A PROPOS -->
                <form action="#" style="width: 100%;">
                    <!-- Prevision d'escale -->
                    <div class="col-md-12">
                        <div class="card mb-4 shadow">
                            <div class="card-body">
                                <p><h2 class="h2 mb-0 page-title">Prevision d'escale</h2></p> 
                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <label for="date-input1">Date d'entrée</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control drgpicker" id="date-input1" value="06/02/2023" aria-describedby="button-addon2" required>
                                            <div class="input-group-append">
                                                <div class="input-group-text" id="button-addon-date"><span class="fe fe-calendar fe-16"></span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <label for="time-input2">Heure d'entrée</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="time-input2" placeholder="HH:MM:SS" value="08:00:00" aria-describedby="button-addon2" required>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2 text-center">
                                        <label for="time-input2">Jusqu'a</label>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="date-input1">Date de sortie</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control drgpicker" id="date-input1" value="06/02/2023" aria-describedby="button-addon2" required>
                                            <div class="input-group-append">
                                                <div class="input-group-text" id="button-addon-date"><span class="fe fe-calendar fe-16"></span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <label for="time-input2">Heure de sortie</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="time-input2" placeholder="HH:MM:SS" value="10:00:00" aria-describedby="button-addon2" required>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <p><h4 class="h4 mb-0 page-title">Duree d'escale : 2 h 00 min 00 s</h4></p>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- .card -->
                    </div> <!-- .col-md-->
                    <!-- FIN Prevision d'escale -->
                    <!-- Prestations -->
                    <div class="col-md-12">
                        <div class="card mb-4 shadow">
                            <div class="card-body">
                                <p><h2 class="h2 mb-0 page-title">Prestations</h2></p> 
                                <div class="form-row">
                                    <div class="col-md-12 mb-4">
                                        <div class="card shadow">
                                            <div class="card-body">
                                                <p class="mb-2"><strong>Choisissez vos prestations</strong></p>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck1-1" disabled="" checked="">
                                                    <label class="custom-control-label" for="customCheck1">Stationnement</label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck1-1" disabled="" checked="">
                                                    <label class="custom-control-label" for="customCheck1">Remorquages</label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck2">
                                                    <label class="custom-control-label" for="customCheck2">Cession d'eau</label>
                                                </div>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck3">
                                                    <label class="custom-control-label" for="customCheck3">Reparation</label>
                                                </div>
                                            </div> <!-- / .card-body -->
                                        </div> <!-- / .card -->
                                    </div>
                                </div>
                            </div>
                        </div> <!-- .card -->
                    </div> <!-- .col-md-->
                    <!-- FIN Prestations -->
                    <!-- QUAIS -->
                    <div class="col-md-12">
                        <div class="card mb-4 shadow">
                            <div class="card-body">
                                <p><h2 class="h2 mb-0 page-title">En attente sur le quai numero 1 </h2></p> 
                                <div class="row">
                                    <% for(int i = 0; i < 4; i++) { 
                                        if(i == 0) {
                                    %>
                                    <div class="col-md-3">
                                        <div class="card shadow mb-4" style="background-color: greenyellow;">
                                            <div class="card-body text-center">
                                                <div class="card-text my-2">
                                                    <strong class="card-title my-0"><%= (i+1) %></strong>
                                                </div>
                                            </div> <!-- ./card-text -->
                                        </div>
                                    </div> <!-- .col -->
                                    <% } else { %>
                                    <div class="col-md-3">
                                        <div class="card shadow mb-4">
                                            <div class="card-body text-center">
                                                <div class="card-text my-2">
                                                    <strong class="card-title my-0"><%= (i+1) %></strong>
                                                </div>
                                            </div> <!-- ./card-text -->
                                        </div>
                                    </div> <!-- .col -->
                                    <% } %>
                                    <% } %>
                                </div> <!-- .row -->
                            </div>
                        </div>
                    </div> <!-- .col-md-->
                    <!-- FIN QUAIS -->
                    <!-- Ordre de priorite -->
                    <div class="col-md-12">
                        <div class="card mb-4 shadow">
                            <div class="card-body">
                                <p><h2 class="h2 mb-0 page-title">Ordre de priorite (le navire est surligne en vert)</h2></p> 
                                <div class="form-row">
                                    <div class="col-md-12 mb-4">
                                        <div class="card-body" style="height: 100%; overflow-y: scroll;">
                                            <table class="table table-sm table-hover table-borderless">
                                                <thead>
                                                    <tr>
                                                        <th>Escale</th>
                                                        <th>Quai</th>
                                                        <th>ID Navire</th>
                                                        <th>description</th>
                                                        <th>client</th>
                                                        <th>entree</th>
                                                        <th>sortie</th>
                                                        <th>cout (Ar)</th>
                                                        <th>cout (Euro)</th>
                                                        <th>etat</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>1</td>
                                                        <td>002</td>
                                                        <td>X</td>
                                                        <td>Z</td>
                                                        <td>01/06/2023 08:00:00</td>
                                                        <td>01/06/2023 08:00:00</td>
                                                        <td>2 000</td>
                                                        <td>256</td>
                                                        <td><span class="badge badge-pill badge-success">sur place</span></td>
                                                    </tr>
                                                    <% for(int i = 0; i < 4; i++) { 
                                                        if(i == 2) {
                                                    %>
                                                    <tr class="table-success">
                                                        <td>1</td>
                                                        <td>1</td>
                                                        <td>002</td>
                                                        <td>X</td>
                                                        <td>Z</td>
                                                        <td>01/06/2023 08:00:00</td>
                                                        <td>01/06/2023 08:00:00</td>
                                                        <td>2 000</td>
                                                        <td>256</td>
                                                        <td><span class="badge badge-pill badge-warning">en attente</span></td>
                                                    </tr>
                                                    <% } else  { %>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>1</td>
                                                        <td>002</td>
                                                        <td>X</td>
                                                        <td>Z</td>
                                                        <td>01/06/2023 08:00:00</td>
                                                        <td>01/06/2023 08:00:00</td>
                                                        <td>2 000</td>
                                                        <td>256</td>
                                                        <td><span class="badge badge-pill badge-warning">en attente</span></td>
                                                    </tr>
                                                    <% } %>
                                                    <% } %>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- .card -->
                    </div> <!-- .col-md-->
                    <!-- FIN Ordre de priorite -->
                    <div class="col-md-12">
                        <div class="mb-2" style="width: 50%; display: flex; flex-direction: row; justify-content: space-evenly; margin: 0 auto;">
                            <a href="prevision_choix_navire.jsp"><button type="button" class="btn mb-2 btn-outline-danger">annuler</button></a>
                            <button type="button" class="btn mb-2 btn-outline-warning">modifier</button>
                            <a href="liste_escale.jsp"><button type="button" class="btn mb-2 btn-outline-success">confirmer</button></a>
                        </div>
                    </div>
                </form>
            </div>
            <!-- FIN CONTENT -->
        </div> <!-- .col-12 -->
    </div> <!-- .row -->
</div>
<%@ include file = "footer.html" %>