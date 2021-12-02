<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lib.aspx.cs" Inherits="spCRUD.lib" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<head runat="server">
    <title></title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand ml-5" href="#">Last Drop</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class=" container mt-5">
        <div class="mt-3 mb-5">
            <h1>Add Anime !</h1>
        </div>
        <form runat="server">
            <div class="form-group">
                <label for="Name">Anime Name</label>
                <asp:TextBox ID="Name" class="form-control" runat="server" placeholder="Anime Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="Category">Category</label>
                <asp:TextBox ID="Category" class="form-control" runat="server" placeholder="Category"></asp:TextBox>
            </div>
            <label for="Description">Description</label>
            <asp:TextBox ID="Description" class="form-control" runat="server" placeholder="Description"></asp:TextBox>

            <table class="mt-3">
                <tr>
                    <td colspan="2">
                        <asp:Button runat="server" Text="Create" class="btn btn-outline-success btn-lg mr-3" OnClick="Create" />
                        <asp:Button runat="server" Text="Delete" class="btn btn-outline-success btn-lg mr-3" OnClick="Delete" />
                        <asp:Button runat="server" Text="Update" class="btn btn-outline-success btn-lg mr-3" OnClick="Update" />
                        <asp:Button runat="server" Text="View" class="btn btn-outline-success btn-lg mr-3" OnClick="View" />
                        <br />
                        <br />
                    </td>
                </tr>
                <div class="mt-3">
                    <tr>
                    <td>Enter ID to update</td>
                    <td>
                        <asp:TextBox ID="oldID" runat="server" class="form-control"></asp:TextBox></td>
                </tr>
                </div>
            </table>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </form>
    </div>
    <p>
        <h1>Even if you add data the data will not be displayed !!!</h1>\
        <h3><bold>Thank EW :P</bold></h3>
    </p>
</body>
</html>
