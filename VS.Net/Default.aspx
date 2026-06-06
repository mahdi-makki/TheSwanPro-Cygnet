<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cygnet.FrontEnd.VSNet.Default" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TheSwanPro - Login</title>
    <link rel="icon" type="image/png" href="../Images/swan_pro_icon.png" />

    <!-- Tailwind CSS (REQUIRED for Basecoat component layouts) -->
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>

    <!-- Basecoat CSS (Design tokens + component styling) -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/basecoat-css@0.3.10/dist/basecoat.cdn.min.css"
    />

    <!-- Basecoat Core JS (required for all interactive parts) -->
    <script
      src="https://cdn.jsdelivr.net/npm/basecoat-css@0.3.10/dist/js/all.min.js"
      defer
    ></script>

    <!-- Basecoat Component Registry -->
    <script
      src="https://cdn.jsdelivr.net/npm/basecoat-css@0.3.10/dist/js/basecoat.min.js"
      defer
    ></script>

    <!-- Dropdown Menu Component -->
    <script
      src="https://cdn.jsdelivr.net/npm/basecoat-css@0.3.10/dist/js/dropdown-menu.min.js"
      defer
    ></script>

    <link rel="stylesheet" href="Content/theme.css" />

    <style>
      .spin-icon {
        animation: spin 1s linear infinite;
      }

      @keyframes spin {
        from {
          transform: rotate(0deg);
        }
        to {
          transform: rotate(360deg);
        }
      }
    </style>
  </head>

  <body class="h-screen bg-gray-100 flex flex-col overflow-hidden">
    <!-- Card container -->
    <div
      class="grid grid-cols-1 [@media(min-width:900px)]:grid-cols-[55%_45%] bg-white overflow-hidden w-full h-full"
    >
      <!-- Form (right on desktop) -->
      <div
        class="flex flex-col justify-center px-20 py-24 [@media(min-width:900px)]:order-2"
      >
        <div class="w-full max-w-[520px] mx-auto">
          <!-- Cygnet logo -->
          <div class="flex justify-center mb-5">
            <img
              src="../Images/cygnet_logo.png"
              alt="Cygnet logo"
              class="h-11 object-contain"
            />
          </div>

          <header class="text-center mb-8">
            <h2 class="text-2xl font-bold mb-1">Login to your account</h2>
            <p class="text-gray-500 text-sm">
              Enter your details below to login to your account
            </p>
          </header>

          <section>
            <form
              id="form1"
              class="form mx-auto"
              style="max-width: 320px"
              method="post"
              runat="server"
            >
              <div class="grid gap-6">
                <div class="grid gap-2">
                  <label for="UsernameTextBox">Username</label>
                  <asp:TextBox
                    ID="UsernameTextBox"
                    runat="server"
                    CssClass="input"
                    placeholder="m@example.com"
                    aria-invalid="false"
                  />
                </div>

                <div class="grid gap-2">
                  <div class="flex items-center gap-2">
                    <label for="demo-card-form-password">Password</label>
                    <a
                      href="#"
                      class="ml-auto text-sm underline-offset-4 hover:underline"
                    >
                      Forgot your password?
                    </a>
                  </div>

                  <div class="relative">
                    <asp:TextBox
                      ID="PasswordTextBox"
                      runat="server"
                      CssClass="input pr-9"
                      TextMode="Password"
                      placeholder=""
                      aria-invalid="false"
                    />
                    <div
                      class="absolute right-3 top-1/2 -translate-y-1/2 text-muted-foreground [&>svg]:size-4"
                      data-tooltip="Password must be at least 8 characters long."
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        fill="none"
                        stroke="#666666"
                        stroke-width="2"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                      >
                        <circle cx="12" cy="12" r="10" />
                        <path d="M12 16v-4" />
                        <path d="M12 8h.01" />
                      </svg>
                    </div>
                  </div>
                </div>

                <footer class="flex flex-col items-center gap-3 mt-2">
                  <asp:Button
                    ID="LoginButton"
                    runat="server"
                    CssClass="btn w-full"
                    Text="Login"
                    OnClick="LoginButton_Click"
                    OnClientClick="this.disabled=true;this.innerHTML='<svg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\' fill=\'none\' stroke=\'currentColor\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-linejoin=\'round\' class=\'spin-icon\'><path d=\'M12 2v4\'/><path d=\'m16.2 7.8 2.9-2.9\'/><path d=\'M18 12h4\'/><path d=\'m16.2 16.2 2.9 2.9\'/><path d=\'M12 18v4\'/><path d=\'m4.9 19.1 2.9-2.9\'/><path d=\'M2 12h4\'/><path d=\'m4.9 4.9 2.9 2.9\'/></svg>Loading...';"
                  />

                  <div
                    class="hidden flex justify-center items-center text-sm text-red-600 gap-1.5"
                  >
                    <svg
                      class="mt-0.5"
                      xmlns="http://www.w3.org/2000/svg"
                      width="16"
                      height="16"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      stroke-width="2"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    >
                      <circle cx="12" cy="12" r="10" />
                      <path d="M12 16v-4" />
                      <path d="M12 8h.01" />
                    </svg>
                    Invalid email address
                  </div>

                  <!-- Powered by TheSwanPro logo -->
                  <p
                    class="text-xs text-gray-500 text-center flex items-center justify-center gap-1.5 mt-3"
                  >
                    Powered by
                    <img
                      src="../Images/swan_pro_logo.png"
                      alt="TheSwanPro"
                      class="h-6 object-contain inline-block"
                    />
                  </p>
                </footer>
              </div>
            </form>
          </section>
        </div>
      </div>

      <!-- Branding panel (left on desktop) -->
      <div
        class="hidden [@media(min-width:900px)]:flex flex-col relative overflow-hidden text-slate-700 p-14 [@media(min-width:900px)]:order-1"
        style="background: linear-gradient(135deg, #e8e9ff 0%, #f4ecff 100%)"
      >
        <!-- Logo -->
        <div
          class="flex items-center justify-center size-12 rounded-xl bg-[var(--primary)] text-white shadow-sm shrink-0"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
          >
            <path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" />
          </svg>
        </div>

        <!-- Slider -->
        <div class="mt-10">
          <div class="relative min-h-[104px]">
            <div
              class="brand-slide absolute inset-0 transition-opacity duration-500"
            >
              <h1 class="text-4xl font-bold mb-3 text-slate-900">
                Designed for Individuals
              </h1>
              <p class="text-slate-500 text-base max-w-sm leading-relaxed">
                See the analytics and grow your data remotely, from anywhere!
              </p>
            </div>
            <div
              class="brand-slide absolute inset-0 transition-opacity duration-500 opacity-0 pointer-events-none"
            >
              <h1 class="text-4xl font-bold mb-3 text-slate-900">
                Powerful Analytics
              </h1>
              <p class="text-slate-500 text-base max-w-sm leading-relaxed">
                Track performance and uncover insights with real-time
                dashboards.
              </p>
            </div>
            <div
              class="brand-slide absolute inset-0 transition-opacity duration-500 opacity-0 pointer-events-none"
            >
              <h1 class="text-4xl font-bold mb-3 text-slate-900">
                Secure by Design
              </h1>
              <p class="text-slate-500 text-base max-w-sm leading-relaxed">
                Your data stays protected with enterprise-grade security.
              </p>
            </div>
          </div>

          <div class="flex items-center gap-2 mt-3">
            <button
              type="button"
              aria-label="Go to slide 1"
              class="brand-dot h-1.5 w-7 rounded-full bg-[var(--primary)] transition-all duration-300"
            ></button>
            <button
              type="button"
              aria-label="Go to slide 2"
              class="brand-dot h-1.5 w-1.5 rounded-full bg-[var(--primary)]/30 transition-all duration-300"
            ></button>
            <button
              type="button"
              aria-label="Go to slide 3"
              class="brand-dot h-1.5 w-1.5 rounded-full bg-[var(--primary)]/30 transition-all duration-300"
            ></button>
          </div>
        </div>

        <!-- Dashboard image -->
        <div class="flex-1 flex items-end justify-center mt-28">
          <img
            src="../Images/portal.png"
            alt="Dashboard preview"
            class="w-[100%] h-auto object-contain"
          />
        </div>
      </div>

      <script>
        (function () {
          const slides = Array.from(document.querySelectorAll(".brand-slide"));
          const dots = Array.from(document.querySelectorAll(".brand-dot"));
          if (!slides.length) return;
          let current = 0;
          let timer;

          function show(n) {
            current = (n + slides.length) % slides.length;
            slides.forEach((s, i) => {
              const active = i === current;
              s.classList.toggle("opacity-0", !active);
              s.classList.toggle("pointer-events-none", !active);
            });
            dots.forEach((d, i) => {
              const active = i === current;
              d.classList.toggle("w-7", active);
              d.classList.toggle("bg-[var(--primary)]", active);
              d.classList.toggle("w-1.5", !active);
              d.classList.toggle("bg-[var(--primary)]/30", !active);
            });
          }

          function start() {
            clearInterval(timer);
            timer = setInterval(() => show(current + 1), 4000);
          }

          dots.forEach((d, i) =>
            d.addEventListener("click", () => {
              show(i);
              start();
            }),
          );

          show(0);
          start();
        })();
      </script>
    </div>
  </body>
</html>
