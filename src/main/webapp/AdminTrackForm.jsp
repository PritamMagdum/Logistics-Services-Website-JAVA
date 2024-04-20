<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Add Track Details</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
    <link rel="stylesheet" type="text/css" href="css/material-design-iconic-font.min.css">

    <link rel="stylesheet" href="css/AdminTrackStyle.css" />
    <meta name="robots" content="noindex, follow">
    <script>
        nonce="c231d8c6-294c-4b0d-b7e6-92ed899d1715">(function (w, d) { !function (f, g, h, i) { f[h] = f[h] || {}; f[h].executed = []; f.zaraz = { deferred: [], listeners: [] }; f.zaraz.q = []; f.zaraz._f = function (j) { return function () { var k = Array.prototype.slice.call(arguments); f.zaraz.q.push({ m: j, a: k }) } }; for (const l of ["track", "set", "debug"]) f.zaraz[l] = f.zaraz._f(l); f.zaraz.init = () => { var m = g.getElementsByTagName(i)[0], n = g.createElement(i), o = g.getElementsByTagName("title")[0]; o && (f[h].t = g.getElementsByTagName("title")[0].text); f[h].x = Math.random(); f[h].w = f.screen.width; f[h].h = f.screen.height; f[h].j = f.innerHeight; f[h].e = f.innerWidth; f[h].l = f.location.href; f[h].r = g.referrer; f[h].k = f.screen.colorDepth; f[h].n = g.characterSet; f[h].o = (new Date).getTimezoneOffset(); if (f.dataLayer) for (const s of Object.entries(Object.entries(dataLayer).reduce(((t, u) => ({ ...t[1], ...u[1] }))))) zaraz.set(s[0], s[1], { scope: "page" }); f[h].q = []; for (; f.zaraz.q.length;) { const v = f.zaraz.q.shift(); f[h].q.push(v) } n.defer = !0; for (const w of [localStorage, sessionStorage]) Object.keys(w || {}).filter((y => y.startsWith("_zaraz_"))).forEach((x => { try { f[h]["z_" + x.slice(7)] = JSON.parse(w.getItem(x)) } catch { f[h]["z_" + x.slice(7)] = w.getItem(x) } })); n.referrerPolicy = "origin"; n.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(f[h]))); m.parentNode.insertBefore(n, m) };["complete", "interactive"].includes(g.readyState) ? zaraz.init() : f.addEventListener("DOMContentLoaded", zaraz.init) }(w, d, "zarazData", "script"); })(window, document);
    </script>
</head>

<body class="form-v10">
    <div class="page-content">
        <div class="form-v10-content">
            <form class="form-detail" action="ServiceOperationServlet" method="post" id="myform">
            <input type="hidden" name="operation" value="addTrack">
                <div class="form-left">
                    <h2>Customer Details</h2>

                    <div class="form-row">
                        <input type="text" name="cName" class="cName" id="cName" placeholder="Enter Customer Name" required>
                    </div>

                    <div class="form-row">
                        <input type="text" name="cAddress" class="cAddress" id="cAddress" placeholder="Address" required>
                    </div>


                    <div class="form-group">
                        <!-- <div class="form-row form-row-1">
                            <input type="text" name="code" class="code" id="code" placeholder="Code +" required>
                        </div> -->
                        <div class="form-row form-row-1">
                            <input type="text" name="cMobile" class="cMobile" id="cMobile" placeholder="Phone Number"
                                required>
                        </div>
                    </div>



                    <div class="form-group">
                        <div class="form-row form-row-1">
                            <input type="text" name="Departure" class="Departure" id="Departure" placeholder="Departure" required>
                        </div>
                        <div class="form-row form-row-2">
                            <input type="text" name="Arrival" class="Arrival" id="Arrival" placeholder="Arrival" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row form-row-1">
                            <input type="text" name="Delivery" class="Delivery" id="Delivery" placeholder="Delivery" required>
                        </div>
                        <div class="form-row form-row-4">
                            <select name="Mode" required>
                                <option value=""disabled selected hidden>Mode</option>
                                <option value="Express">Express</option>
                                <option value="Normal">Normal</option>
                            </select>
                            <span class="select-btn">
                                <i class="zmdi zmdi-chevron-down"></i>
                            </span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="form-row form-row-1">
                            <input type="text" name="Weight" class="Weight" id="Weight" placeholder="Total Weight (KG)" required>
                        </div>
                        <div class="form-row form-row-2">
                            <input type="text" name="Dimension" class="Dimension" id="Dimension" placeholder="Dimension (CM)" required>
                        </div>
                    </div>

                     <div class="form-group">
                        <div class="form-row form-row-1">
                            <h4 style=" font-style: normal; font-weight: unset; margin-left: 20px;"> Choose Booking Date : </h4>
                        </div>
                        <div class="form-row form-row-2">
                             <input style="cursor: pointer; "type="date" name="Date" class="Date" id="Date" placeholder="Date of Booked" required>
                        </div>
                    </div>
                
<!-- 
                    <div class="form-row">
                        <select name="title">
                            <option class="option" value="title">Title</option>
                            <option class="option" value="businessman">Businessman</option>
                            <option class="option" value="reporter">Reporter</option>
                            <option class="option" value="secretary">Secretary</option>
                        </select>
                        <span class="select-btn">
                            <i class="zmdi zmdi-chevron-down"></i>
                        </span>
                    </div>


                    <div class="form-group">
                        <div class="form-row form-row-1">
                            <input type="text" name="first_name" id="first_name" class="input-text"
                                placeholder="First Name" required>
                        </div>
                        <div class="form-row form-row-2">
                            <input type="text" name="last_name" id="last_name" class="input-text"
                                placeholder="Last Name" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <select name="position">
                            <option value="position">Position</option>
                            <option value="director">Director</option>
                            <option value="manager">Manager</option>
                            <option value="employee">Employee</option>
                        </select>
                        <span class="select-btn">
                            <i class="zmdi zmdi-chevron-down"></i>
                        </span>
                    </div>
                    <div class="form-row">
                        <input type="text" name="company" class="company" id="company" placeholder="Company" required>
                    </div>
                    <div class="form-group">
                        <div class="form-row form-row-3">
                            <input type="text" name="business" class="business" id="business"
                                placeholder="Business Arena" required>
                        </div>
                        <div class="form-row form-row-4">
                            <select name="employees">
                                <option value="employees">Employees</option>
                                <option value="trainee">Trainee</option>
                                <option value="colleague">Colleague</option>
                                <option value="associate">Associate</option>
                            </select>
                            <span class="select-btn">
                                <i class="zmdi zmdi-chevron-down"></i>
                            </span>
                        </div>
                    </div> -->
                </div>
                <div class="form-right">
                    <h2>Service Details</h2>

                    <div class="form-row">
                        <input type="text" name="dName" class="dName" id="dName" placeholder="Enter Driver Name" required>
                    </div>

                    <div class="form-group">
                        <!-- <div class="form-row form-row-1">
                            <input type="text" name="code" class="code" id="code" placeholder="Code +" required>
                        </div> -->
                        <div class="form-row form-row-1">
                            <input type="text" name="dMobile" class="dMobile" id="dMobile" placeholder="Phone Number"
                                required>
                        </div>
                    </div>
                    <div class="form-row">
                        <input type="text" name="sDescription" class="sDescription" id="sDescription"
                            placeholder="Service Description" required>
                    </div>
                    <div class="form-row">
                        <input type="text" name="Amount" class="Amount" id="Amount"
                            placeholder="Amount" required>
                    </div>

                    <div class="form-group">
                        <div class="form-row form-row-1">
                            <select name="Payment_Mode" required>
                                <option value=""disabled selected hidden>Payment</option>
                                <option value="Online">Online</option>
                                <option value="COD">COD</option>
                            </select>
                            <span class="select-btn">
                                <i class="zmdi zmdi-chevron-down"></i>
                            </span>
                        </div>
                        <div class="form-row form-row-2">
                            <select name="Payment_Status" required>
                                <option value=""disabled selected hidden>Payment Status</option>
                                <option value="Paid">Paid</option>
                                <option value="Pending">Pending</option>
                            </select>
                            <span class="select-btn">
                                <i class="zmdi zmdi-chevron-down"></i>
                            </span>
                        </div>
                    </div>

                    <div class="form-row">
                        <input type="text" name="vNumber" class="vNumber" id="vNumber"
                            placeholder="Vehicle Number (MH 12 BR 4117)" required>
                    </div>

                    <div class="form-row">
                        <input type="text" name="Track_Number" class="Track_Number" id="Track_Number" placeholder="Track Id" required>
                    </div>
                    <!-- <div class="form-row">
                        <input type="text" name="street" class="street" id="street" placeholder="Street + Nr" required>
                    </div>
                    <div class="form-row">
                        <input type="text" name="additional" class="additional" id="additional"
                            placeholder="Additional Information" required>
                    </div>
                    <div class="form-group">
                        <div class="form-row form-row-1">
                            <input type="text" name="zip" class="zip" id="zip" placeholder="Zip Code" required>
                        </div>
                        <div class="form-row form-row-2">
                            <select name="place">
                                <option value="place">Place</option>
                                <option value="Street">Street</option>
                                <option value="District">District</option>
                                <option value="City">City</option>
                            </select>
                            <span class="select-btn">
                                <i class="zmdi zmdi-chevron-down"></i>
                            </span>
                        </div>
                    </div>
                    <div class="form-row">
                        <select name="country">
                            <option value="country">Country</option>
                            <option value="Vietnam">Vietnam</option>
                            <option value="Malaysia">Malaysia</option>
                            <option value="India">India</option>
                        </select>
                        <span class="select-btn">
                            <i class="zmdi zmdi-chevron-down"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <div class="form-row form-row-1">
                            <input type="text" name="code" class="code" id="code" placeholder="Code +" required>
                        </div>
                        <div class="form-row form-row-2">
                            <input type="text" name="phone" class="phone" id="phone" placeholder="Phone Number"
                                required>
                        </div>
                    </div>
                    <div class="form-row">
                        <input type="text" name="your_email" id="your_email" class="input-text" required
                            pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Your Email">
                    </div>
                    <div class="form-checkbox">
                        <label class="container">
                            <p>I do accept the <a href="#" class="text">Terms and Conditions</a> of your site.</p>
                            <input type="checkbox" name="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </div> -->
                    <div class="form-row-last">
                        <input type="submit" name="register" class="register" value="Add Track">
                    </div>
                </div>
                
            </form>
        </div>
    </div>

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>
    <script defer
        src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
        integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
        data-cf-beacon='{"rayId":"79b3dff23ccc29f2","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.2.0","si":100}'
        crossorigin="anonymous"></script>
</body>

</html>