<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="clgproj.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <title>Home</title>
    <script src="https://kit.fontawesome.com/09848ef6f3.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="home.css">
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">


    <!-- odometer -->

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(function () {
            let start = 0;
            let end = $(".num").html();
            let speed = 10;

            setInterval(function () {
                if (start < end) {
                    start++;
                }
                $(".num").html(start);
            }, speed);
        });
    </script>

<script>
    $(function () {
        let start = 0;
        let end = $(".num1").html();
        let speed = 10;

        setInterval(function () {
            if (start < end) {
                start++;
            }
            $(".num1").html(start);
        }, speed);
    });
</script>
    <script>
        $(function () {
            let start = 0;
            let end = $(".num2").html();
            let speed = 2;

            setInterval(function () {
                if (start < end) {
                    start++;
                }
                $(".num2").html(start);
            }, speed);
        });
    </script>
        
<script>
    $(function () {
        let start = 0;
        let end = $(".num3").html();
        let speed = 10;

        setInterval(function () {
            if (start < end) {
                start++;
            }
            $(".num3").html(start);
        }, speed);
    });
</script>

<script>
    $(function () {
        let start = 0;
        let end = $(".num4").html();
        let speed = 25;

        setInterval(function () {
            if (start < end) {
                start++;
                start++;
            }
            $(".num4").html(start);
        }, speed);
    });
</script>

<script>
    $(function () {
        let start = 0;
        let end = $(".num5").html();
        let speed = 2;

        setInterval(function () {
            if (start < end) {
                start++;
            }
            $(".num5").html(start);
        }, speed);
    });
</script>


    <!-- Odometer End -->

    <div class="imageContainer">
        
        <img src="l1.jpg"/></div>        

        <center>
        <div class="name">
                <h2>
                    DISCOVER THE ELEVATED LIFE<br/>
                    BEYOND EXCEPTIONAL
                </h2>
        </div>
        </center>

        <div class="detail">
            <div><img src="detail.jpg"></div>
            <div><h2 class="dname">City Dwellings</h2></div>
            <div><p>was established in 1969</p></div>
            <div><p class="desc">We bring over 5 decades of real estate excellence to developing and building premium<br>
            residential towers, gated communities, townships and office properties. Our 100+ awards &<br>
            accolades are testimony to our legacy.</p></div>
            <hr>

            <div class="numbers">
            <p class="textA">MORE THAN</p>
            
            <div class="num">
                110
            </div>

            <p class="textB">PROJECTS</p>
            </div>
            
            <div class="numbers1">
            <p class="textA">OVER</p>    
            <div class="num1">
                50
            </div>
            <p class="textB">YEARS</p>    
            </div>

            <div class="numbers2">
            <p class="textA">MORE THAN</p>    
            <div class="num2">
                1500
            </div>
            <p class="textB">HAPPY FAMILIES</p>    
            </div>

            <div class="numbers3">
            <p class="textA">OVER</p>    
            <div class="num3">
                180
            </div>
            <p class="textB">LAKH SQ.MT SOLD</p>    
            </div>
            <hr class="hr1">

            <div class="numbers4">
            <p class="textA">APPROX</p>    
            <div class="num4">
                18
            </div>
            <p class="textB">LAKH SQ.MT. UNDER<br>PLANNING</p>    
            </div>

            <div class="numbers5">
            <p class="textA">EMPLOYEES</p>    
            <div class="num5">
                1350
            </div>
            <p class="textB">IN REAL ESTATE DIVISION</p>    
            </div>

            <!-- Arrow animation -->

            <div class="arrow">
                <span></span>
                <span></span>
                <span></span>
  
            </div>

            <!-- Arrow animation end -->

            <!-- Link arrow -->
            <div class="link-arrow">
                <span></span>
            </div>
            <a href="CorporateProfile.aspx" class="link"><p>MORE ABOUT<br>CITY DWELLINGS</p></a>

            <!-- Link arrow end -->
        </div>

        <div class="projects">
            <div class="content">
                
                <h1 class="header">Projects</h1>
                <div>
                <div class="proj-img">
                    <img src="p1.png">
                </div>
                <div class="proj-name">
                    <p class="cname">CITY</p>
                    <h3 class="pname">solitaire</h3>
                </div>
                <div class="proj-desc">
                    <p>
                        A living experience unlike any other in a star-<br>studded neighborhood of Juhu. Ready amenities<br>
                        like a rooftop landscaped terrace, swimming pool,<br>gym, spa, mini theatre & many more.<br>
                        <b>Lavish 3 & 4 BHK ready possession homes.</b>
                    </p>

                    <!-- Link arrow -->
                    <div class="link-arrow-proj">
                        <span></span>
                    </div>
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" class="link-proj" OnClick ="linkbutton1_click"><p>&emsp;MORE DETAILS</p></asp:LinkButton>

                    <!-- Link arrow end -->
                </div>
                </div>
            
            <div>
            <div class="proj-img1">
                    <img src="RunwalMainImg.jpg">
                </div>
                <div class="proj-name1">
                    <p class="cname1">RUNWAL</p>
                    <h3 class="pname1">bliss</h3>
                </div>
                <div class="proj-desc1">
                    <p>
                        Presenting Runwal Bliss a landmark<br>development of 3 majestic towers, designed for<br>those who are looking to enjoy the spoils of<br>success. It’s an address in the up-market<br>neighbourhood of Kanjur East that leaves<br> nothing to be desired.<br><b>Lavish 2 , 3 , 4 & 4.5 bedroom residences.</b>
                    </p>

                    <!-- Link arrow -->
                    <div class="link-arrow-proj1">
                        <span></span>
                    </div>
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" class="link-proj1" OnClick ="linkbutton2_click"><p>&emsp;MORE DETAILS</p></asp:LinkButton>

                    <!-- Link arrow end -->
                </div>
                </div>

                <div>
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="allproj_click">
                        <div class="proj-all">
                        <img src="p3.jpg">
                    </div>
                    </asp:LinkButton>
                </div>
            </div>
    </div>


</asp:Content>
