<%@ Page Title="ApplicationForm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Application-Form.aspx.cs" Inherits="WebApplication1.Application_Form" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id="heading01">Application Form</h2>
    <h4 id="heading02">Each and every fields are mandatory</h4>
    <h5>Click Below Url Hyperlink</h5>
    <div id="hypr-link-container">
        <asp:HyperLink ID="hypr01" runat="server" CssClass="hypr01" NavigateUrl="https://github.com/Ritabrata-Goswami?tab=repositories" Text="Click Github" Target="_blank"></asp:HyperLink>
    </div>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">
        #heading01{
            margin-top:7px;
        }
        #heading02{
            margin-top:10px;
        }
        h5{
            margin-top:25px;
        }
        #hypr-link-container{
            margin-top:7px;
        }
        .hypr01{
            color:#ee3333;
            text-decoration:none;
        }
        #form-container{
            margin-top:50px;
        }
        .field-container{
            display:flex;
            margin-top:10px;
        }
        .input-field{
            padding:6px 5px;
            width:70%;
            margin-left:10px;
            /*border:none;*/
        }
        .txt-lebel{
            font-weight:bold;
            font-size:17px;
        }
        #Choise{
            margin-left:10px;
            margin-top:5px;
        }
        .Choise{
            margin-left:6px;
            font-size:15px;
            /*cursor:pointer;*/
        }
        .Upload,.City{
            margin-left:10px;
        }
        #btn-container{
            margin-top:30px;
        }
        .submit-btn{
            border:none;
            padding:7px 7px;
            cursor:pointer;
            color:azure;
            background-color:#1f1f1f;
            /*float:right;*/
        }
        .submit-btn:hover{
            transition:0.5s;
            background-color:#1a1a1a;
        }
        #Output{
            margin-top:20px;
        }
    </style>

    <div id="form-container">
        <div class="field-container">
            <asp:Label ID="txt01" runat="server" Text="Enter Name:" CssClass="txt-lebel"></asp:Label>
            <asp:TextBox ID="Enter_name" runat="server" CssClass="input-field w3-input" placeholder="Enter your name"></asp:TextBox>
        </div>
        <div class="field-container">
            <asp:Label ID="txt02" runat="server" Text="Select Gender:" CssClass="txt-lebel"></asp:Label>
            <div class="Choise">
                <asp:RadioButton ID="Male" runat="server" Text="Male" GroupName="Gender" CssClass="Choise"/>
                <asp:RadioButton ID="Female" runat="server" Text="Female" GroupName="Gender" CssClass="Choise" />
                <asp:RadioButton ID="Others" runat="server" Text="Others" GroupName="Gender" CssClass="Choise" />
            </div>
        </div>
        <div class="field-container">
            <asp:Label ID="txt03" runat="server" Text="Select Education:" CssClass="txt-lebel"></asp:Label>
            <div class="Choise">
                <asp:CheckBox ID="class10" runat="server" Text="10-th" CssClass="Choise"/>
                <asp:CheckBox ID="class12" runat="server" Text="12-th" CssClass="Choise" />
                <asp:CheckBox ID="Btech" runat="server" Text="B.Tech" CssClass="Choise" />
                <asp:CheckBox ID="Mtech" runat="server" Text="M.Tech" CssClass="Choise" />
            </div>
        </div>
        <div class="field-container">
            <asp:Label ID="txt04" runat="server" Text="Select City:" CssClass="txt-lebel"></asp:Label>
            <div class="City">
                <asp:DropDownList ID="City" runat="server">
                    <asp:ListItem Value="">Select</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="field-container">
            <asp:Label ID="txt05" runat="server" Text="Upload File:" CssClass="txt-lebel"></asp:Label>
            <div class="Upload">
                <asp:FileUpload ID="Upload" runat="server" CssClass="Upload" />
            </div>
        </div>

        <div class="field-container">
            <asp:Label ID="txt06" runat="server" Text="Upload File(Multiple):" CssClass="txt-lebel"></asp:Label>
            <div class="Upload">
                <asp:FileUpload ID="FileUploadMultiple" runat="server" CssClass="Upload" AllowMultiple="true" />
            </div>
        </div>

        <div id="btn-container">
            <asp:Button  ID="Button1" Text="Submit" runat="server" CssClass="submit-btn" OnClick="Submit_Input" />
        </div>


        <div id="Output">
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:Label ID="Label2" runat="server"></asp:Label><br />  
            <asp:Label ID="Label3" runat="server"></asp:Label><br />
            <asp:Label ID="Label4" runat="server"></asp:Label><br />
            <asp:Label ID="Label5" runat="server"></asp:Label><br />
            <asp:Label ID="Label6" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>


