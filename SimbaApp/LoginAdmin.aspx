<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginAdmin.aspx.vb" Inherits="SimbaApp.LoginAdmin" %>

 <!--#include file="~/View/Layout/LoginAdmin_header.html"-->      
<body>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
            <div class="login-brand">
              <img src="assets2/img/stisla-fill.svg" alt="logo" width="100" class="shadow-light rounded-circle">
            </div>

            <div class="card card-primary">
              <div class="card-header"><h4>Login</h4></div>

              <div class="card-body">
                <form runat="server" class="needs-validation" novalidate="">
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input id="txtEmail" runat="server" type="email" class="form-control" name="email" tabindex="1" required autofocus>
                    <div class="invalid-feedback">
                      Please fill in your email
                    </div>
                  </div>

                  <div class="form-group">
                  <label for="password">Password</label>
                    <input id="txtPassword" runat="server" type="password" class="form-control" name="password" tabindex="2" required>
                    <div class="invalid-feedback">
                      please fill in your password
                    </div>
                  </div>
                    

                  <div class="form-group">
                      <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg btn-block" Text="Login" />

                  </div>
                </form>



              </div>
                </div>
            </div>

                            </div>
            </div>

        </section>
      </div>
    </body>

 <!--#include file="~/View/Layout/LoginAdmin_footer.html"-->           