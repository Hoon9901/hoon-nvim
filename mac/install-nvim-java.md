require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "lazyvim.plugins.extras.dap.core" }, 해당 import 추가
    { import = "plugins" },
  },
})
를 ~/.config/nvim/lua/config/lazy.lua 수정해서 import 추가


그리고 LazyExtra 패키지 활성화
LazyExtrasYou can enable the extra with the :LazyExtras command. Plugins marked as optional will only be configured if they are installed.


그리고 Mason pm 을 이용해 
jdtls, java-test, openjdk-17 플러그인 설치

neoconf를 이용해 

{
  "lspconfig": {
    "jdtls": {
      "java.configuration.runtimes": [
        {
          "name": "JavaSE-17",
          "path": "/Users/seonghun/.asdf/installs/java/zulu-17.32.13/",
          "default": true
        }
      ]
    }
  }
}

java 환경 설정
