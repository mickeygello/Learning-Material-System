<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!--***** Logo Start *****--> 
                    <a href="index.jsp" class="logo" style="width:25%">
                        <img style="width:60%;" src="assets/images/logo_fpt.png">
                    </a>
                    <!--***** Logo End *****--> 
                    <!--***** Menu Start *****--> 
                    <ul class="nav" id="main-menu" style=" height: 400px; width: 75%">
                        <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
                        <li class="scroll-to-section"><a href="listSubject">Subject</a></li>
                        <li class="scroll-to-section"><a href="#about">About</a></li>
                        <li class="scroll-to-section"><a href="#portfolio">Curriculum</a></li>
                            <c:if test="${sessionScope.roleName != null ||  sessionScope.roleName == 'guess'}">
                     <li class="scroll-to-section" style="width: 100px"><a href="Page404.jsp" style="width: 100px; ">Syllabus</a>

                                <ul class="sub-menu" style="list-style: none; background-color: white; border-radius: 5px; padding: 15px; width: 200px">
                                    <div style="border-radius: 5px; ">
                                         <li style="position: relative; right: 20px;"><a href="listMaterial">Material</a></li>
                                    <li style="position: relative; right: 20px; "><a href="listAssessment">Assessment</a></li>
                                    <li style="position: relative; right: 60px;"><a href="listSession">Session</a></li>
                                    </div>
                                </ul></li> 
                        </c:if>
                        <c:if test="${sessionScope.roleName == null}">
                            <li class="scroll-to-section" style="width: 100px"><a href="Page404.jsp" style="width: 100px; ">Syllabus</a>

                                <ul class="sub-menu" style="list-style: none; background-color: white; border-radius: 5px; padding: 15px; width: 200px">
                                    <div style="border-radius: 5px; ">
                                         <li style="position: relative; right: 20px;"><a href="listMaterial">Material</a></li>
                                    <li style="position: relative; right: 20px; "><a href="listAssessment">Assessment</a></li>
                                    <li style="position: relative; right: 60px;"><a href="listSession">Session</a></li>
                                    </div>
                                </ul></li> 
                            </c:if>
                        <li class="scroll-to-section"><a href="#contact">Contact Us</a></li> 
                        <li class="scroll-to-section">

                            <c:if test="${sessionScope.DataEmail == null}">
                                <div class="main-red-button-hover row text-overflow">
                                    <a class="col-md-12" href="login.jsp"><span class="fa fa-user"></span> Sign in / Sign up</a>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.DataEmail != null }">

                                <div class="dropdown dropdown-primary" style="margin-bottom: 12px;  width: 50px; height: 50px ">
                                    <button type="button" class="btn btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="data:image/png;base64,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" alt="alt"/></button>
                                    <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3">
                                        <a class="dropdown-item d-flex align-items-center text-dark" href="https://shreethemes.in/doctris/layouts/admin/profile.html">
                                            <img style="width: 50px; height: 50px" src="data:image/png;base64,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" class="avatar avatar-md-sm rounded-circle border shadow" alt="">

                                            <div class="flex-1 ms-2">
                                                <span style="color: black" class="d-block mb-1">${sessionScope.DataEmail}</span>
                                                <small style="color: black; font-weight: bold" class="text-muted">${sessionScope.roleName}</small>
                                            </div>
                                        </a>
                                        <br/>
                                        <c:if test="${sessionScope.roleName == 'admin' ||  sessionScope.roleName == 'syllabus_designer'}">
                                            <a style="color: black" class="dropdown-item text-dark" href="AdDashboard.jsp"><span class="mb-0 d-inline-block me-1"><i class="uil uil-dashboard align-middle h6"></i></span> Dashboard</a>
                                                </c:if>
                                        <a style="color: black" class="dropdown-item text-dark" href="viewProfile"><span class="mb-0 d-inline-block me-1"><i class="uil uil-setting align-middle h6"></i></span> Profile Settings</a>
                                        <div class="dropdown-divider border-top"></div>
                                        <a style="color: black" class="dropdown-item text-dark" href="logout"><span class="mb-0 d-inline-block me-1"><i class="uil uil-sign-out-alt align-middle h6"></i></span> Logout</a>
                                    </div>
                                </div>
                            </c:if>
                        </li> 
                    </ul>        
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!--***** Menu End *****--> 
                </nav>
            </div>
        </div>
    </div>
</header>