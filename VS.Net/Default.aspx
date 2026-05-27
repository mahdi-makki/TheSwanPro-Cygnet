<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default" %>
<!DOCTYPE html>
<html lang="en">
  <head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TheSwanPro - Login</title>
    <link rel="icon" type="image/png" href="../assets/swan_pro_icon.png" />

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

    <link rel="stylesheet" href="../theme.css" />
  </head>

  <body class="h-screen bg-gray-100 flex flex-col overflow-hidden">
    <!-- Card container -->
    <div
      class="grid grid-cols-1 [@media(min-width:900px)]:grid-cols-[45%_55%] bg-white overflow-hidden w-full h-full"
    >
      <!-- LEFT: Form -->
      <div class="flex flex-col justify-center px-20 py-24">
        <div class="w-full max-w-[520px] mx-auto">
          <!-- Cygnet logo -->
          <div class="flex justify-center mb-5">
            <img
              src="../assets/cygnet_logo.png"
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
            <form id="form1" runat="server" class="form mx-auto" style="max-width: 320px">
              <div class="grid gap-6">
                <div class="grid gap-2">
                  <label for="UsernameTextBox">Username</label>
                  <asp:TextBox
                    ID="UsernameTextBox"
                    runat="server"
                    ClientIDMode="Static"
                    CssClass="input"
                    Placeholder="m@example.com"
                    TextMode="SingleLine"
                  />
                </div>

                <div class="grid gap-2">
                  <div class="flex items-center gap-2">
                    <label for="PasswordTextBox">Password</label>
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
                      ClientIDMode="Static"
                      CssClass="input pr-9"
                      TextMode="Password"
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
                  <button
                    id="LoginButton"
                    runat="server"
                    class="btn w-full"
                    type="submit"
                    onserverclick="LoginButton_Click"
                    onclick="this.disabled=true; this.innerHTML='<svg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\' fill=\'none\' stroke=\'currentColor\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-linejoin=\'round\' class=\'animate-spin\'><path d=\'M12 2v4\'/><path d=\'m16.2 7.8 2.9-2.9\'/><path d=\'M18 12h4\'/><path d=\'m16.2 16.2 2.9 2.9\'/><path d=\'M12 18v4\'/><path d=\'m4.9 19.1 2.9-2.9\'/><path d=\'M2 12h4\'/><path d=\'m4.9 4.9 2.9 2.9\'/></svg>Loading...'; return true;"
                  >
                    Login
                  </button>

                  <span
                    id="ErrorWrapper"
                    runat="server"
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
                    <asp:Literal ID="ErrorMessageText" runat="server" Mode="PassThrough" />
                  </span>

                  <!-- Powered by TheSwanPro logo -->
                  <p
                    class="text-xs text-gray-500 text-center flex items-center justify-center gap-1.5 mt-3"
                  >
                    Powered by
                    <img
                      src="../assets/swan_pro_logo.png"
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

      <!-- RIGHT: Static panel -->
      <div
        class="hidden [@media(min-width:900px)]:flex items-center justify-center relative overflow-hidden"
        style="
          background: radial-gradient(
            ellipse at 0% 100%,
            rgba(99, 102, 241, 0.12) 0%,
            rgba(139, 92, 246, 0.07) 35%,
            #ffffff 70%
          );
        "
      >
        <!-- Dashboard image -->
        <img
          src="../assets/portal.png"
          alt="Dashboard preview"
          style="
            position: absolute;
            right: 0;
            top: 50%;
            transform: translate(8%, -50%);
            width: 95%;
            height: auto;
            display: block;
          "
        />
      </div>
    </div>
  </body>
</html>
