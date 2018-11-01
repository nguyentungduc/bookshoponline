<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/templates/taglib.jsp" %>
             <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu">
                <div class="slimscroll-menu" id="remove-scroll">
                    <div id="sidebar-menu">
                        <ul class="metisMenu nav" id="side-menu">
                            <li class="menu-title">Admin manager</li>
                            <li>
                                <a href="${pageContext.request.contextPath}/admincp"><i class="fi-air-play"></i><span class="badge badge-success pull-right">1</span> <span> Dashboard </span> </a>
                            </li>
                            <li>
                                <a href="javascript: void(0);" aria-expanded="true"><i class="fi-briefcase"></i> <span> Category </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level nav" aria-expanded="true">
                                    <li><a href="${pageContext.request.contextPath}/admincp/category">List</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admincp/category/add">Add</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" aria-expanded="true"><i class="fi-briefcase"></i> <span> Language </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level nav" aria-expanded="true">
                                    <li><a href="${pageContext.request.contextPath}/admincp/language">List</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admincp/language/add">Add</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" aria-expanded="true"><i class="fi-briefcase"></i> <span> Publisher </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level nav" aria-expanded="true">
                                    <li><a href="${pageContext.request.contextPath}/admincp/publisher">List</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admincp/publisher/add">Add</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" aria-expanded="true"><i class="fi-disc"></i><span class="menu-arrow"></span><span> User </span></a>
                                <ul class="nav-second-level nav" aria-expanded="true">
                                    <li><a href="${pageContext.request.contextPath}/admincp/user">User</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admincp/user/add">Add</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" aria-expanded="true"><i class="fi-disc"></i><span class="menu-arrow"></span><span> Book </span></a>
                                <ul class="nav-second-level nav" aria-expanded="true">
                                    <li><a href="${pageContext.request.contextPath}/admincp/book">List Boook</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admincp/book/add">Add</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript: void(0);" aria-expanded="true"><i class="fi-disc"></i><span class="menu-arrow"></span><span> Orders </span></a>
                                <ul class="nav-second-level nav" aria-expanded="true">
                                    <li><a href="${pageContext.request.contextPath}/admincp/order">List Orders</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
