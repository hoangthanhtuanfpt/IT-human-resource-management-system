<%-- 
    Document   : employee
    Created on : May 18, 2023, 9:42:44 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee</title>

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        <div class="main-wrapper">

            <div class="header">

                <div class="header-left">
                    <a href="index.html" class="logo">
                        <span>HR Management</span>
                    </a>
                    <a href="index.html" class="logo logo-small">
                        <span>HRMS</span>
                    </a>
                    <a href="javascript:void(0);" id="toggle_btn">
                        <span class="bar-icon">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                    </a>
                </div>




                <div class="top-nav-search">
                    <form>
                        <input type="text" class="form-control" placeholder="">
                        <button class="btn" type="submit"><i class="fas fa-search"></i></button>
                    </form>
                </div>


                <a class="mobile_btn" id="mobile_btn">
                    <i class="fas fa-bars"></i>
                </a>


                <ul class="nav user-menu">

                    <li class="nav-item dropdown">
                        <a href="#" class="dropdown-toggle nav-link pr-0" data-toggle="dropdown">
                            <i data-feather="bell"></i> <span class="badge badge-pill"></span>
                        </a>
                        <div class="dropdown-menu notifications">
                            <div class="topnav-dropdown-header">
                                <span class="notification-title">Notifications</span>
                                <a href="javascript:void(0)" class="clear-noti"> Clear All</a>
                            </div>
                            <div class="noti-content">
                                <ul class="notification-list">
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="" src="assets/img/profiles/avatar-02.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Brian Johnson</span> paid the invoice <span class="noti-title">#DF65485</span></p>
                                                    <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="" src="assets/img/profiles/avatar-03.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Marie Canales</span> has accepted your estimate <span class="noti-title">#GTR458789</span></p>
                                                    <p class="noti-time"><span class="notification-time">6 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <div class="avatar avatar-sm">
                                                    <span class="avatar-title rounded-circle bg-primary-light"><i class="far fa-user"></i></span>
                                                </div>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">New user registered</span></p>
                                                    <p class="noti-time"><span class="notification-time">8 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar avatar-sm">
                                                    <img class="avatar-img rounded-circle" alt="" src="assets/img/profiles/avatar-04.jpg">
                                                </span>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">Barbara Moore</span> declined the invoice <span class="noti-title">#RDW026896</span></p>
                                                    <p class="noti-time"><span class="notification-time">12 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <div class="avatar avatar-sm">
                                                    <span class="avatar-title rounded-circle bg-info-light"><i class="far fa-comment"></i></span>
                                                </div>
                                                <div class="media-body">
                                                    <p class="noti-details"><span class="noti-title">You have received a new message</span></p>
                                                    <p class="noti-time"><span class="notification-time">2 days ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="topnav-dropdown-footer">
                                <a href="activities.html">View all Notifications</a>
                            </div>
                        </div>
                    </li>


                    <li class="nav-item dropdown has-arrow main-drop">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                            <span class="user-img">
                                <img src="assets/img/profile.jpg" alt="">
                                <span class="status online"></span>
                            </span>
                            <span>VinhPQ</span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="profile.html"><i data-feather="user" class="mr-1"></i> Profile</a>
                            <a class="dropdown-item" href="settings.html"><i data-feather="settings" class="mr-1"></i> Settings</a>
                            <a class="dropdown-item" href="login.html"><i data-feather="log-out" class="mr-1"></i> Logout</a>
                        </div>
                    </li>

                </ul>
                <div class="dropdown mobile-user-menu show">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu dropdown-menu-right ">
                        <a class="dropdown-item" href="profile.html">My Profile</a>
                        <a class="dropdown-item" href="settings.html">Settings</a>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </div>

            </div>


            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div class="sidebar-contents">
                        <div id="sidebar-menu" class="sidebar-menu">
                            <div class="mobile-show">
                                <div class="offcanvas-menu">
                                    <div class="user-info align-center bg-theme text-center">
                                        <span class="lnr lnr-cross  text-white" id="mobile_btn_close">X</span>
                                        <a href="javascript:void(0)" class="d-block menu-style text-white">
                                            <div class="user-avatar d-inline-block mr-3">
                                                <img src="assets/img/profiles/avatar-18.jpg" alt="user avatar" class="rounded-circle" width="50">
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="sidebar-input">
                                    <div class="top-nav-search">
                                        <form>
                                            <input type="text" class="form-control" placeholder="Search here">
                                            <button class="btn" type="submit"><i class="fas fa-search"></i></button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <ul>
                                <li>
                                    <a href="admin.jsp"><img src="assets/img/home.svg" alt="sidebar_img"> <span>Dashboard</span></a>
                                </li>
                                <li class="active">
                                    <a href="employee.jsp"><img src="assets/img/employee.svg" alt="sidebar_img"><span> Employees</span></a>
                                </li>
                                <li>
                                    <a href="company.html"><img src="assets/img/group.png" alt="sidebar_img"> <span> Team</span></a>
                                </li>
                                <li>
                                    <a href="calendar.html"><img src="assets/img/calendar.svg" alt="sidebar_img"> <span>Calendar</span></a>
                                </li>
                                <li>
                                    <a href="leave.html"><img src="assets/img/leave.svg" alt="sidebar_img"> <span>Leave</span></a>
                                </li>
                                <li>
                                    <a href="review.html"><img src="assets/img/review.svg" alt="sidebar_img"><span>Review</span></a>
                                </li>
                                <li>
                                    <a href="report.html"><img src="assets/img/report.svg" alt="sidebar_img"><span>Report</span></a>
                                </li>
                                <li>
                                    <a href="manage.html"><img src="assets/img/manage.svg" alt="sidebar_img"> <span>Manage</span></a>
                                </li>
                                <li>
                                    <a href="settings.html"><img src="assets/img/settings.svg" alt="sidebar_img"><span>Settings</span></a>
                                </li>
                                <li>
                                    <a href="profile.html"><img src="assets/img/profile.svg" alt="sidebar_img"> <span>Profile</span></a>
                                </li>
                            </ul>
                            <ul class="logout">
                                <li>
                                    <a href="profile.html"><img src="assets/img/logout.svg" alt="sidebar_img"><span>Log out</span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="row">
                        <div class="col-xl-12 col-sm-12 col-12">
                            <div class="breadcrumb-path mb-4">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html"><img src="assets/img/dash.png" class="mr-2" alt="breadcrumb" />Home</a>
                                    </li>
                                    <li class="breadcrumb-item active"> Employees</li>
                                </ul>
                                <h3>Employees</h3>
                            </div>
                        </div>
                        <div class="col-xl-12 col-sm-12 col-12 mb-4">
                            <div class="head-link-set">
                                <ul>
                                    <li><a class="active" href="#">All</a></li>
                                    <li><a href="employee-team.html">Teams</a></li>
                                    <li><a href="employee-office.html">Offices</a></li>
                                </ul>
                                <a class="btn-add" href="add-employee.html"><i data-feather="plus"></i> Add Person</a>
                            </div>
                        </div>
                        <div class="col-xl-12 col-sm-12 col-12 mb-4">
                            <div class="row">
                                <div class="col-xl-10 col-sm-8 col-12 ">
                                    <label class="employee_count">7 People</label>
                                </div>
                                <div class="col-xl-1 col-sm-2 col-12 ">
                                    <a href="employee-grid.html" class="btn-view "><i data-feather="grid"></i> </a>
                                </div>
                                <div class="col-xl-1 col-sm-2 col-12 ">
                                    <a href="#" class="btn-view active"><i data-feather="list"></i> </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12 col-sm-12 col-12 mb-4">
                            <div class="card">
                                <div class="table-heading">
                                    <h2>Project Summery</h2>
                                </div>
                                <div class="table-responsive">
                                    <table class="table  custom-table no-footer">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Line Manager</th>
                                                <th>Team</th>
                                                <th>Office</th>
                                                <th>Permissions</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="table-img">
                                                        <a href="profile.html">
                                                            <img src="assets/img/profiles/avatar-13.jpg" alt="profile" class="img-table" /><label>Sean Black</label>
                                                        </a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <label class="action_label">Richard Wilson </label>
                                                </td>
                                                <td>
                                                    <label class="action_label2">Design </label>
                                                </td>
                                                <td><label>Focus Technologies	</label></td>
                                                <td><label>Team Lead</label></td>
                                                <td class="tab-select">
                                                    <select class="select">
                                                        <option value="active">Active</option>
                                                        <option value="inactive">Inactive</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="table-img">
                                                        <a href="profile.html">
                                                            <img src="assets/img/profiles/avatar-16.jpg" alt="profile" class="img-table" /><label>Linda Craver</label>
                                                        </a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <label class="action_label">Richard Wilson </label>
                                                </td>
                                                <td>
                                                    <label class="action_label2">IOS </label>
                                                </td>
                                                <td><label>Focus Technologies	</label></td>
                                                <td><label>Team Lead</label></td>
                                                <td class="tab-select">
                                                    <select class="select">
                                                        <option value="active">Active</option>
                                                        <option value="inactive">Inactive</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="table-img">
                                                        <a href="profile.html">
                                                            <img src="assets/img/profiles/avatar-17.jpg" alt="profile" class="img-table" />
                                                        </a>
                                                        <label>Jenni Sims</label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <label class="action_label">Richard Wilson </label>
                                                </td>
                                                <td>
                                                    <label class="action_label2">Android </label>
                                                </td>
                                                <td><label>Focus Technologies	</label></td>
                                                <td><label>Team Lead</label></td>
                                                <td class="tab-select">
                                                    <select class="select">
                                                        <option value="active">Active</option>
                                                        <option value="inactive">Inactive</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="table-img">
                                                        <a href="profile.html">
                                                            <img src="assets/img/profiles/avatar-19.jpg" alt="profile" class="img-table" />
                                                        </a>
                                                        <label>Stacey Linville</label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <label class="action_label">Richard Wilson </label>
                                                </td>
                                                <td>
                                                    <label class="action_label2">Testing </label>
                                                </td>
                                                <td><label>Focus Technologies	</label></td>
                                                <td><label>Team Lead</label></td>
                                                <td class="tab-select">
                                                    <select class="select">
                                                        <option value="active">Active</option>
                                                        <option value="inactive">Inactive</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="table-img">
                                                        <a href="profile.html">
                                                            <img src="assets/img/profiles/avatar-14.jpg" alt="profile" class="img-table" />
                                                        </a>
                                                        <label>Maria Cotton</label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <label class="action_label">Richard Wilson </label>
                                                </td>
                                                <td>
                                                    <label class="action_label2">PHP </label>
                                                </td>
                                                <td><label>Focus Technologies	</label></td>
                                                <td><label>Team Lead</label></td>
                                                <td class="tab-select">
                                                    <select class="select">
                                                        <option value="active">Active</option>
                                                        <option value="inactive">Inactive</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="table-img">
                                                        <a href="profile.html">
                                                            <img src="assets/img/profiles/avatar-18.jpg" alt="profile" class="img-table" />
                                                        </a>
                                                        <label>John Gibbs</label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <label class="action_label">Richard Wilson </label>
                                                </td>
                                                <td>
                                                    <label class="action_label2">PHP </label>
                                                </td>
                                                <td><label>Focus Technologies	</label></td>
                                                <td><label>Team Lead</label></td>
                                                <td class="tab-select">
                                                    <select class="select">
                                                        <option value="active">Active</option>
                                                        <option value="inactive">Inactive</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="table-img">
                                                        <a href="profile.html">
                                                            <img src="assets/img/profiles/avatar-10.jpg" alt="profile" class="img-table" />
                                                        </a>
                                                        <label>Richard Wilson</label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <label class="action_label in_active">No </label>
                                                </td>
                                                <td>
                                                    <label class="action_label2">Business </label>
                                                </td>
                                                <td><label>Focus Technologies	</label></td>
                                                <td><label>Super Admin</label></td>
                                                <td class="tab-select">
                                                    <select class="select">
                                                        <option value="active">Active</option>
                                                        <option value="inactive">Inactive</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <script src="assets/js/feather.min.js"></script>

        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="assets/plugins/select2/js/select2.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>
</html>
