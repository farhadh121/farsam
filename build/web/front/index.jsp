<!DOCTYPE html>
<html lang="en" class="app">
<%@ include file="subpages/head.jsp" %>
<body class="">

  <section class="vbox">
      <!-- Top Bar-->
      <%@ include file="subpages/topbar.jsp" %>
      <!-- /Top Bar-->

    <section>
      <section class="hbox stretch">
        <!--left Nav-->
            <%@ include file="subpages/leftbar.jsp"%>
        <!--/.left Nav-->
        <section id="content">
          <section class="hbox stretch">
            <section>
              <section class="vbox">
               <!--Main content middle pane-->
                  <%@ include file="subpages/maincontent.jsp"%>
               <!--/Main content middle pane-->
                <!--bottom Player  -->

                <!--bottom Player-->
              </section>
            </section>
            <!-- Right side content -->
              <%@ include file="subpages/rightside.jsp"%>
            <!-- / Right side content -->
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section>
  <%@ include file="subpages/javascript.jsp"%>

</body>
</html>