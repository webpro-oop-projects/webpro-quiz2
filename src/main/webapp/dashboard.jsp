<!DOCTYPE html>
<html lang="<%= request.getLocale().toString().replace('_', '-') %>">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.tailwindcss.com" rel="stylesheet">
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="input.css" rel="stylesheet">

<%--  <meta name="csrf-token" content="<%= csrfToken %>">--%>
<%--  <title><%= appConfig.get("app.name", "JavaApp") %></title>--%>

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.bunny.net">
  <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
  <link href="https://fonts.cdnfonts.com/css/cosmic" rel="stylesheet">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet">

  <!-- Scripts -->
<%--  <script src="<%= resourcesPath %>/js/app.js" type="text/javascript"></script>--%>
<%--  <link href="<%= resourcesPath %>/css/app.css" rel="stylesheet">--%>

  <style>
    body {
      font-family: 'Cosmic', sans-serif;
    }
  </style>
</head>

<body class="font-sans antialiased">
<div class="background min-h-screen" style="background-color: #1F2833;">
  <div class="shape"></div>
  <div class="shape"></div>
  <div class="shape"></div>
  <div class="shape"></div>
  <div class="shape"></div>
  <div class="shape"></div>
  <div class="shape"></div>
  <div class="shape"></div>
  <div class="shape"></div>

<%--  <!-- Navbar Include -->--%>
<%--  <%@ include file="layouts/navbar.jsp" %>--%>
  <nav class="bg-[#1F2833] h-16 flex items-center z-50 bg-opacity-50">
    <div class="container mx-auto flex justify-between items-center">
      <!-- Logo or Brand -->
      <a href="<c:url value='/' />" class="flex items-center">
        <img src="${pageContext.request.contextPath}/images/logo.png" alt="Logo" class="h-20" />
      </a>

      <!-- Links (centered) -->
      <div id="menu" class="flex-1 hidden md:flex justify-center space-x-4">
        <a href="dashboard.jsp" class="hover:text-gray-400 text-white">Home</a>
        <a href="posts/index.jsp" class="hover:text-gray-400 text-white">Post</a>
        <a href="reviews/index.jsp" class="hover:text-gray-400 text-white">Reviews</a>
      </div>

      <!-- Logout button (aligned to the right) -->
      <div>
        <form action="LogoutServlet" method="GET">
          <button type="submit" class="text-white hover:text-gray-400 px-4 py-2">
            Logout
          </button>
        </form>
      </div>
    </div>
  </nav>

<%--  <!-- Page Heading -->--%>
<%--  <% if (header != null) { %>--%>
<%--  <header class="bg-[#2F4156]">--%>
<%--    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">--%>
<%--      <%= header %>--%>
<%--    </div>--%>
<%--  </header>--%>
<%--  <% } %>--%>

<%--  <!-- Page Content -->--%>
  <main class="flex items-center justify-center mt-10">
    <body class="font-sans antialiased bg-[#F5EFEB] text-black/50">
    <div class="text-black/50">
      <div class="relative min-h-screen flex flex-col items-center justify-center selection:bg-[#FF2D20] selection:text-white">
        <div class="relative w-full max-w-2xl px-6 lg:max-w-7xl">

          <main class="mt-6 w-full h-auto">
            <!-- Main content here -->
            <section class="relative bg-cover bg-center w-full h-[60vh] text-white" style="background-image: url('${pageContext.request.contextPath}/images/thing.gif');">
              <div class="absolute inset-0 bg-black opacity-50"></div> <!-- Overlay for better text visibility -->
              <div class="relative flex items-center justify-center h-full">
                <div class="text-center p-6">
                  <img src="${pageContext.request.contextPath}/images/logo.png" alt="Rate-View Logo" class="h-42">
                  <p class="text-lg md:text-xl mb-6">Rate Shows That You Have Viewed</p>
                  <a href="<%= request.getAttribute("registerUrl") %>" class="bg-[#2F4156] hover:bg-[#567C8D] text-white font-semibold py-3 px-6 rounded transition">
                    Get Started
                  </a>
                </div>
              </div>
            </section>

            <div>
              <h1 class="text-center text-3xl p-5 text-[#C5C6C7]">Recommendations</h1>
            </div>

            <div class="mt-4 grid grid-cols-2 sm:grid-cols-4 gap-x-5 gap-y-5">
              <!-- Movie Cards -->
              <div class="relative rounded-xl overflow-hidden">
                <img src="${pageContext.request.contextPath}/images/perfectblue.jpg" class="object-cover h-full w-full -z-10" alt="">
                <div class="absolute inset-0 bg-gradient-to-t from-black/50 p-3 flex flex-col justify-end">
                  <div class="self-center flex flex-col items-center space-y-2">
                    <span class="capitalize text-white font-medium drop-shadow-md">Perfect Blue</span>
                    <span class="text-gray-100 text-xs">+12 Movies</span>
                  </div>
                </div>
              </div>

              <div class="relative rounded-xl overflow-hidden">
                <img src="${pageContext.request.contextPath}/images/dune.jpg" class="object-cover w-full h-full -z-10" alt="">
                <div class="absolute inset-0 bg-gradient-to-t from-black/50 p-3 flex flex-col justify-end">
                  <div class="self-center flex flex-col items-center space-y-2">
                    <span class="capitalize text-white font-medium drop-shadow-md">Dune</span>
                    <span class="text-gray-300 text-xs">+24 Movies</span>
                  </div>
                </div>
              </div>

              <div class="relative rounded-xl overflow-hidden">
                <img src="${pageContext.request.contextPath}/images/good-will-hunting.jpg" class="object-cover h-full w-full -z-10" alt="">
                <div class="absolute inset-0 bg-gradient-to-t from-black/50 p-3 flex flex-col justify-end">
                  <div class="self-center flex flex-col items-center space-y-2">
                    <span class="capitalize text-white font-medium drop-shadow-md">Good Will Hunting</span>
                    <span class="text-gray-300 text-xs">+10 Movies</span>
                  </div>
                </div>
              </div>

              <div class="relative rounded-xl overflow-hidden">
                <img src="${pageContext.request.contextPath}/images/myown.jpg" class="object-cover h-full w-full -z-10" alt="">
                <div class="absolute inset-0 bg-gradient-to-t from-black/50 p-3 flex flex-col justify-end">
                  <div class="self-center flex flex-col items-center space-y-2">
                    <span class="capitalize text-white font-medium drop-shadow-md">My Own Private Idaho</span>
                    <span class="text-gray-300 text-xs">+27 Movies</span>
                  </div>
                </div>
              </div>
            </div>

          </main>

          <footer class="py-16 text-center text-sm text-white">
            Webpro IUP 2024
          </footer>
        </div>
      </div>
    </div>
    </body>
  </main>
</div>
</body>
</html>
