<%@ page import="com.radio.entity.hibernate.GenreEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.servlet.support.RequestContextUtils" %>
<%@ page import="com.radio.svc.serviceinterface.IGenreServiceProvider" %>
<%@ page import="org.springframework.web.context.WebApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<!-- If I don't use this, Then I possibly get duplicated variable errors -->
<%{ %>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">List Genres</h3>
                </div>

                <%
                    String msg = (String)request.getAttribute("msg");
                    String controller = (String)request.getAttribute("controller");
                    if( controller != null && controller.equals("deletegenre") ){
                        if( msg != null && msg.equals("success") ){
                %>
                    <div class="alert alert-success alert-dismissable">
                        <i class="fa fa-check"></i>
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                        <b>Succes!</b>
                        Genre Deleted Successfully.
                    </div>
                <%
                        }else if( msg != null && msg.equals("failed") ){
                %>
                    <div class="alert alert-danger alert-dismissable">
                        <i class="fa fa-ban"></i>
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                        <b>Failed!</b>
                        <%=request.getAttribute("msgbody").toString()%>
                    </div>
                <%
                        }
                    }
                %>

                <div class="box-body">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th style="width: 10px">#</th>
                                <th>Genre Name</th>
                                <th>Delete Genre</th>
                            </tr>
                            <%
                                WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(session.getServletContext());
                                IGenreServiceProvider genreServiceProvider = (IGenreServiceProvider)context.getBean("genreFacade");
                                List<GenreEntity> list = genreServiceProvider.getAllGenres();
                                Iterator itr = list.iterator();
                                int counter = 1;
                                while( itr.hasNext() ){
                                    GenreEntity temp = (GenreEntity)itr.next();
                            %>
                            <tr>
                                <th><%=counter%>.</th>
                                <th><%=temp.getName()%></th>
                                <th><button class="btn btn-danger btn-flat" onclick="location.href='/deleteGenreController.htm?genrename=<%=temp.getName()%>'">Delete</button></th>
                            </tr>

                            <%
                                    counter++;
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<% } %>