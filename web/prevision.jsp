<%@ include file = "header.html" %>
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="row align-items-center my-4">
                <div class="col">
                    <h2 class="h3 mb-0 page-title">Prevision</h2>
                </div>
            </div>
            <!-- CONTENT -->
            <div class="row my-4">
                <!-- A PROPOS -->
                <div class="col-md-12">
                    <div class="card mb-4 shadow">
                        <div class="card-body my-n3">
                            <div class="row align-items-center">
                                <div class="col">
                                    <p><h2 class="h2 mb-0 page-title">A propos</h2></p>                                   
                                    <p><h4 class="h4 mb-0 page-title">Royal Navy - Petrolier </h4></p>
                                    <p><h6 class="h6 mb-0">national / international </h6></p>
                                    <p><h5 class="h5 mb-0 page-title">Profondeur : 5 metres</h5></p>
                                    <p><h6 class="h6 mb-0">Client : UK Navy - England</h6></p>
                                </div> <!-- .col -->
                            </div> <!-- .row -->
                        </div> <!-- .card-body -->
                    </div> <!-- .card -->
                </div> <!-- .col-md-->
                <!-- FIN A PROPOS -->
                <form action="proposition.jsp" style="width: 100%;">
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
                                            <input type="text" class="form-control" id="time-input2" placeholder="HH:MM:SS" aria-describedby="button-addon2" required>
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
                                            <input type="text" class="form-control" id="time-input2" placeholder="HH:MM:SS" aria-describedby="button-addon2" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- .card -->
                    </div> <!-- .col-md-->
                    <!-- FIN Prevision d'escale -->
                    <!-- INFO SUPP -->
                    <div class="col-md-12">
                        <div class="card mb-4 shadow">
                            <div class="card-body my-n3">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <p><h2 class="h2 mb-0 page-title">Informations supplémentaires</h2></p>                                   
                                        <p><h4 class="h4 mb-0 page-title">Durée de remorquage : 15 minutes</h4></p>
                                    </div> <!-- .col -->
                                </div> <!-- .row -->
                            </div> <!-- .card-body -->
                        </div> <!-- .card -->
                    </div> <!-- .col-md-->
                    <!-- FIN INFO SUPP -->
                    <div class="col-md-12">
                        <button type="submit" class="btn mb-2 btn-success">voir la proposition<span class="fe fe-chevron-right fe-16 ml-2"></span></button>
                    </div>
                </form>
            </div>
            <!-- FIN CONTENT -->
        </div> <!-- .col-12 -->
    </div> <!-- .row -->
</div>
<%@ include file = "footer.html" %>