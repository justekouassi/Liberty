<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!DOCTYPE html>
<html lang="fr-FR">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link href="favicon_io/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180" />
    <link type="image/png" href="favicon_io/favicon-32x32.png" rel="icon" sizes="32x32" />
    <link type="image/png" href="favicon_io/favicon-16x16.png" rel="icon" sizes="16x16" />
    <link href="site.webmanifest" rel="manifest" />

    <link href="css/all.min.css" rel="stylesheet" />
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
    <link href="css/dataTables.bootstrap4.css" rel="stylesheet" />
    <link href="css/base.css" rel="stylesheet" />

    <title>Dashboard | Liberty</title>
  </head>

  <body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
      <!-- Sidebar -->
      <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="accueil.html">
          <div class="sidebar-brand-icon">
            <img src="Liberty.png" alt="Logo" width="40px" />
          </div>
          <div class="sidebar-brand-text mx-3">Liberty</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0" />
        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
          <a class="nav-link" href="dashboard.html">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
          </a>
        </li>

        <hr class="sidebar-divider" />
        <!-- Nav Item - Tables -->
        <li class="nav-item">
          <a class="nav-link" href="documents.html">
            <i class="fas fa-fw fa-user-edit"></i>
            <span>Documents</span>
          </a>
        </li>
        <!-- Nav Item - Tables -->
        <li class="nav-item">
          <a class="nav-link" href="utilisateurs.html">
            <i class="fas fa-fw fa-user-graduate"></i>
            <span>Utilisateurs</span>
          </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block" />
        <!-- Sidebar Toggler (Sidebar) -->
        <div class="d-none d-md-inline text-center">
          <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
      </ul>
      <!-- End of Sidebar -->

      <!-- Content Wrapper -->
      <div class="d-flex flex-column" id="content-wrapper">
        <!-- Main Content -->
        <div id="content">
          <!-- Topbar -->
          <nav class="navbar navbar-expand navbar-light topbar static-top mb-4 bg-white shadow">
            <!-- Sidebar Toggle (Topbar) -->
            <div class="form-inline">
              <button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop"><i class="fa fa-bars"></i></button>
            </div>

            <!-- Topbar Search -->
            <form class="d-none d-sm-inline-block form-inline ml-md-3 my-md-0 mw-100 navbar-search my-2 mr-auto">
              <div class="input-group">
                <input class="form-control bg-light small border-0" type="search" aria-label="Search" aria-describedby="basic-addon2" placeholder="Recherche..." />
                <div class="input-group-append">
                  <button class="btn btn-primary" type="button"><i class="fas fa-search fa-sm"></i></button>
                </div>
              </div>
            </form>

            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">
              <!-- Nav Item - Search Dropdown (Visible Only XS) -->
              <li class="nav-item dropdown no-arrow d-sm-none">
                <a class="nav-link dropdown-toggle" id="searchDropdown" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><i class="fas fa-search fa-fw"></i></a>
                <!-- Dropdown - Messages -->
                <div class="dropdown-menu dropdown-menu-right animated--grow-in p-3 shadow" aria-labelledby="searchDropdown">
                  <form class="form-inline w-100 navbar-search mr-auto">
                    <div class="input-group">
                      <input class="form-control bg-light small border-0" type="search" aria-label="Search" aria-describedby="basic-addon2" placeholder="Recherche..." />
                      <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search fa-sm"></i></button>
                      </div>
                    </div>
                  </form>
                </div>
              </li>

              <div class="topbar-divider d-none d-sm-block"></div>
              <!-- Nav Item - User Information -->
              <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" id="userDropdown" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                  <span class="d-none d-lg-inline small mr-4 text-gray-600">Bienvenue Pseudo</span>
                  <img class="img-profile rounded-circle" src="img/undraw_profile.svg" />
                </a>
                <!-- Dropdown - User Information -->
                <div class="dropdown-menu dropdown-menu-right animated--grow-in shadow" aria-labelledby="userDropdown">
                  <a class="dropdown-item" data-toggle="modal" data-target="#logoutModal" href="#">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                    Déconnexion
                  </a>
                </div>
              </li>
            </ul>
          </nav>
          <!-- End of Topbar -->

          <div class="container-fluid">
            <div class="d-sm-flex align-items-center justify-content-between mb-2">
              <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
              <a class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" href="javascript:void(0)"><i class="fas fa-download fa-sm text-white-50"></i> Générer rapport</a>
            </div>

            <!-- Content Row -->
            <div class="row">
              <!-- Documents Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-primary h-100 py-2 shadow">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="font-weight-bold text-primary text-uppercase mb-1 text-xs">
                          <a href="documents.html" style="color: unset; text-decoration: none">Documents</a>
                        </div>
                        <div class="h5 font-weight-bold mb-0 text-gray-800" id="documents">421</div>
                      </div>
                      <div class="col-auto">
                        <i class="fas fa-user-edit fa-2x text-gray-300"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Documents Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-success h-100 py-2 shadow">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="font-weight-bold text-success text-uppercase mb-1 text-xs">
                          <a href="/admin/Utilisateurs" style="color: unset; text-decoration: none">Utilisateurs</a>
                        </div>
                        <div class="h5 font-weight-bold mb-0 text-gray-800" id="Utilisateurs">100</div>
                      </div>
                      <div class="col-auto">
                        <i class="fas fa-user-graduate fa-2x text-gray-300"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Content Row -->

            <div class="row">
              <!-- Area Chart -->
              <div class="col-xl-8 col-lg-7">
                <div class="card mb-4 shadow">
                  <!-- Card Header - Dropdown -->
                  <div class="card-header d-flex align-items-center justify-content-between flex-row py-3">
                    <h6 class="font-weight-bold text-primary m-0">Evolution des utilisateurs</h6>
                    <div class="dropdown no-arrow">
                      <a class="dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" href="javascript:void(0)" role="button" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i></a>
                      <div class="dropdown-menu dropdown-menu-right animated--fade-in shadow" aria-labelledby="dropdownMenuLink">
                        <div class="dropdown-header">Dropdown Header:</div>
                        <a class="dropdown-item" href="javascript:void(0)">Action</a>
                        <a class="dropdown-item" href="javascript:void(0)">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="javascript:void(0)">Something else here</a>
                      </div>
                    </div>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    <div class="chart-area">
                      <canvas id="myAreaChart"></canvas>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Pie Chart -->
              <div class="col-xl-4 col-lg-5">
                <div class="card mb-4 shadow">
                  <!-- Card Header - Dropdown -->
                  <div class="card-header d-flex align-items-center justify-content-between flex-row py-3">
                    <h6 class="font-weight-bold text-primary m-0">Nombre de documents par sujet</h6>
                    <div class="dropdown no-arrow">
                      <a class="dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" href="javascript:void(0)" role="button" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i></a>
                      <div class="dropdown-menu dropdown-menu-right animated--fade-in shadow" aria-labelledby="dropdownMenuLink">
                        <div class="dropdown-header">Dropdown Header:</div>
                        <a class="dropdown-item" href="javascript:void(0)">Action</a>
                        <a class="dropdown-item" href="javascript:void(0)">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="javascript:void(0)">Something else here</a>
                      </div>
                    </div>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    <div class="chart-pie pt-4 pb-2">
                      <canvas id="myPieChart"></canvas>
                    </div>
                    <div class="small mt-4 text-center">
                      <span class="mr-2"><i class="fas fa-circle text-primary"></i> Documents</span>
                      <span class="mr-2"><i class="fas fa-circle text-success"></i> Utilisateurs</span>
                      <span class="mr-2"><i class="fas fa-circle text-warning"></i> Courtiers</span>
                      <span class="mr-2"><i class="fas fa-circle text-danger"></i> Service clientèle</span>
                      <span class="mr-2"><i class="fas fa-circle text-secondary"></i> Contentieux</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
          <div class="container my-auto">
            <div class="copyright my-auto text-center">
              <span>Copyright &copy; Liberty 2023</span>
            </div>
          </div>
        </footer>
        <!-- End of Footer -->
      </div>
      <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button -->
    <a class="scroll-to-top rounded" href="#page-top"><i class="fas fa-angle-up"></i></a>

    <!-- Logout Modal -->
    <div class="modal fade" id="logoutModal" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" tabindex="-1">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Déconnexion ?</h5>
            <button class="close" data-dismiss="modal" type="button" aria-label="Close"><span aria-hidden="true">×</span></button>
          </div>
          <div class="modal-body">Cliquez sur le bouton "Se déconnecter" si vous voulez mettre fin à votre session</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" data-dismiss="modal" type="button">Annuler</button>
            <a class="btn btn-primary" href="/logout">Se déconnecter</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript -->
    <script src="js/jquery.easing.js"></script>
    <!-- Toggle sidebar -->
    <script src="js/sb-admin-2.js"></script>
    <!-- Jquery datatables -->
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap4.js"></script>
    <script>
      $(document).ready(function () {
        $('.table').DataTable({
          language: {
            url: 'js/datatable-french.json'
          }
        })
      })
    </script>
    <!-- Page level plugins -->
    <script src="js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/chart-area-demo.js"></script>
    <script src="js/chart-pie-demo.js"></script>
    <script src="js/base.js"></script>
  </body>
</html>
