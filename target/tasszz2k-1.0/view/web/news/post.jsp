<%-- 
    Document   : post
    Created on : Jul 10, 2020, 6:13:25 PM
    Author     : TASS
--%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <%@include file="/common/taglib.jsp" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <title>JSP Page</title>
                    <!-- comment -->
                    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/web/assets/css/custom-style-comment.css">
                    <!-- comment -->

                </head>

                <body>
                    <style>
                        p {
                            margin: 0px !important;
                        }
                    </style>
                    <header class="masthead" style="background-image: url(&quot;${pageContext.request.contextPath}/template/web/assets/img/home-bg.jpg&quot;);">
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-10 col-lg-8 mx-auto">
                                    <div class="site-heading">
                                        <h1 data-aos="fade-down">BLOG POST</h1><span data-aos="fade-up" class="subheading">Tớ viết linh
                            tinh ở đây nè ^^</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <article>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-10 col-lg-8 mx-auto">
                                    <!--title-->
                                    <div class="post-preview" data-aos="zoom-in">
                                        <h1 class="text-uppercase text-center">${model.title}</h1>
                                        <p class="post-subtitle text-center post-meta" style="padding-bottom: 0px;margin-bottom: 0px;">
                                            "${model.shortDescription}"</p>
                                        <p class="post-meta" style="margin: 0px;"> Thể loại&nbsp; <a href="#">${model.categoryName}</a>
                                        </p>
                                        <p class="post-meta">Đăng bởi&nbsp;
                                            <a href="">
                                                <nobr class="text-uppercase">${model.createdBy}</nobr>
                                                <nobr>
                                            </a>&nbsp;ngày
                                            <fmt:formatDate pattern="dd/MM/yyyy" value="${model.createdDate}" />
                                            </nobr>
                                        </p>
                                        <hr>
                                        <p>
                                            ${model.content}
                                        </p>
                                    </div>
                                    <!--title-->


                                    <hr>
                                    <hr>
                                    <h2 class="section-heading">Về tác giả</h2>
                                    <blockquote class="blockquote">
                                        <i class="fas fa-quote-left"></i>
                                        <p class="mb-0">Tớ là #TASS</p>
                                        <p class="mb-0">^^</p>
                                        <i class="fas fa-quote-right"></i>
                                        <span class=" caption text-muted ">
                                        <p>~TASsZz2k~<br />
                                        &quot;You Don&#39;t Know What You Don&#39;t Know&quot;<br />
                                        🔥</p>
                                         </span>
                                    </blockquote>


                                    <!-- <a href="#"> -->
                                    <!-- <img class="img-fluid rounded" src="${pageContext.request.contextPath}/template/web/assets/img/home-bg.jpg" style="width: 200px;"> -->
                                    <!-- <img src="${pageContext.request.contextPath}/template/web/assets/img/home-bg.jpg" alt="..." class="rounded-circle" style="width: 10%;height:10%;"> -->
                                    <!-- </a> -->

                                </div>
                            </div>
                        </div>
                    </article>
                    <hr>
                    <!-- comment -->
                    <div class="container discussion-container ">
                        <div class="row ">
                            <div class="col-12 ">
                                <div class="comments ">
                                    <div class="comments-details ">
                                        <span class="total-comments comments-sort ">2 Comments</span>
                                        <span class="dropdown ">
                            <button type="button " class="btn dropdown-toggle " data-toggle="dropdown ">Sort By <span
                                    class="caret "></span></button>
                                        <div class="dropdown-menu ">
                                            <a href="# " class="dropdown-item ">Top Comments</a>
                                            <a href="# " class="dropdown-item ">Newest First</a>
                                        </div>
                                        </span>
                                    </div>
                                    <div class="comment-box add-comment ">
                                        <span class="commenter-pic ">
                            <img src="${pageContext.request.contextPath}/template/web/assets/img/home-bg.jpg "
                                class="img-fluid " style="height:100%;width:100%; ">
                        </span>
                                        <span class="commenter-name ">
                            <a href="# ">You</a> <span class="comment-time ">Active</span>
                                        </span>
                                        <input type="text " placeholder="Add a public comment " name="Add Comment ">
                                        <button type="submit " class="btn btn-default ">Comment</button>
                                        <button type="cancel " class="btn btn-default ">Cancel</button>
                                        </span>
                                    </div>
                                    <div class="comment-box ">
                                        <span class="commenter-pic ">
                            <img src="${pageContext.request.contextPath}/template/web/assets/img/hero-background-music.jpg "
                                class="img-fluid " style="height:100%;width:100%; ">
                        </span>
                                        <span class="commenter-name ">
                            <a href="# ">User1</a> <span class="comment-time ">2 hours ago</span>
                                        </span>
                                        <p class="comment-txt more ">Được bạn ơiiiii
                                            <3< /p>
                                                <div class="comment-meta ">
                                                    <button class="comment-like "><i class="fa fa-thumbs-o-up " aria-hidden="true "></i>
                                        13</button>
                                                    <!--<button class="comment-dislike "><i class="fa fa-thumbs-o-down " aria-hidden="true "></i> 149</button>-->
                                                    <button class="comment-reply reply-popup "><i class="fa fa-reply-all "
                                            aria-hidden="true "></i> Reply</button>
                                                </div>
                                                <div class="comment-box add-comment reply-box ">
                                                    <span class="commenter-pic ">
                                        <img src="${pageContext.request.contextPath}/template/web/assets/img/hero-background-travel.jpg "
                                            class="img-fluid " style="height:100%;width:100%; ">
                                    </span>
                                                    <span class="commenter-name ">
                                        <input type="text " placeholder="Add a public reply " name="Add Comment ">
                                        <button type="submit " class="btn btn-default ">Reply</button>
                                        <button type="cancel " class="btn btn-default reply-popup ">Cancel</button>
                                    </span>
                                                </div>
                                    </div>
                                    <div class="comment-box ">
                                        <span class="commenter-pic ">
                            <img src="${pageContext.request.contextPath}/template/web/assets/img/hero-background-travel.jpg "
                                class="img-fluid " style="height:100%;width:100%; ">
                        </span>
                                        <span class="commenter-name ">
                            <a href="# ">User2</a> <span class="comment-time ">2 hours ago</span>
                                        </span>
                                        <p class="comment-txt more ">Thả tim nè
                                            <3< /p>
                                                <div class="comment-meta ">
                                                    <button class="comment-like "><i class="fa fa-thumbs-o-up " aria-hidden="true "></i>
                                        11</button>
                                                    <!--                                <button class="comment-dislike "><i class="fa fa-thumbs-o-down " aria-hidden="true "></i> 0</button>-->
                                                    <button class="comment-reply "><i class="fa fa-reply-all " aria-hidden="true "></i>
                                        Reply</button>
                                                </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- comment -->
                </body>

                </html>