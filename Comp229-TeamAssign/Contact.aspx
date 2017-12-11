<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Comp229_TeamAssign.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article id="contactpage">
        <section>
            <h2>CONTACT</h2>
            <div class="row">
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="Name">YOUR NAME</label>
                        <input type="text" class="form-control" id="Name" placeholder="First name">
                    </div>
                    <div class="form-group">
                        <label for="subject">YOUR SUBJECT</label>
                        <input type="text" class="form-control" id="LastName" placeholder="subject">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">YOUR EMAIL </label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="required">
                    </div>

                    <div class="form-group">
                        <label for="exampleTextarea">YOUR MESSAGE</label>
                        <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                    </div>
                    <a class="btn btn-primary btn-lg" href="Default.aspx" role="button">Send Message</a>
                </div>
                <div class="col-md-4">
                    <p>
                        <span class="jobTitle">Email</span><br />
                        tekponon@my.centennialcollege.ca
                    </p>
                    <p>
                        <span class="jobTitle">Tel</span><br />
                        <a href="tel:+16477735235">647 773 5235</a>
                    </p>
                    <p>
                        <span class="jobTitle">Keep Connected</span><br />
                        <a href="https://www.pinterest.ca/e_sylvere/" class="fa fa-pinterest"></a>
                        <a href="https://www.facebook.com/sylvere.ekponon" class="fa fa-facebook"></a>
                        <a href="https://github.com/SylvereEkponon" class="fa fa-github"></a>
                    </p>
                </div>

            </div>
        </section>

    </article>
</asp:Content>
