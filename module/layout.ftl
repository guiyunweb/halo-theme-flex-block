<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#3367D6"/>

    <meta name="author" content="${user.nickname!}" />
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}" />
    <@global.head />
    <title>${title!}</title>

    <#if is_post?? || is_sheet??>
      <link href="${theme_base!}/source/css/monokai-sublime.min.css" type="text/css" rel="stylesheet" />
      <script src="${theme_base!}/source/js/highlight.min.js"></script>
      <script>
         hljs.initHighlightingOnLoad();
      </script>
       <style>
       @font-face {
            font-family: "JetBrainsMono-ExtraBold";
            src: url("${theme_base!}/source/JetBrainsMono-ExtraBold.woff2") format("woff");
       }
       </style>
    </#if>

    <link href="${theme_base!}/source/css/style.min.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="root-container">
   <#nested >


   <div class="back-to-top-fixed soft-size--round soft-style--box">
    <svg class="icon icon-back-to-top" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg">
      <path d="M725.333333 426.666667c-12.8 0-21.333333-4.266667-29.866667-12.8l-213.333333-213.333333c-17.066667-17.066667-17.066667-42.666667 0-59.733333s42.666667-17.066667 59.733333 0l213.333333 213.333333c17.066667 17.066667 17.066667 42.666667 0 59.733333C746.666667 422.4 738.133333 426.666667 725.333333 426.666667z"></path>
      <path d="M298.666667 426.666667c-12.8 0-21.333333-4.266667-29.866667-12.8-17.066667-17.066667-17.066667-42.666667 0-59.733333l213.333333-213.333333c17.066667-17.066667 42.666667-17.066667 59.733333 0s17.066667 42.666667 0 59.733333l-213.333333 213.333333C320 422.4 311.466667 426.666667 298.666667 426.666667z"></path>
      <path d="M512 896c-25.6 0-42.666667-17.066667-42.666667-42.666667L469.333333 170.666667c0-25.6 17.066667-42.666667 42.666667-42.666667s42.666667 17.066667 42.666667 42.666667l0 682.666667C554.666667 878.933333 537.6 896 512 896z"></path>
    </svg>
  </div>
   <#include "footer.ftl">

</div>
   <script src="${theme_base!}/source/js/script.js"></script>
   <script src="${theme_base!}/source/js/post.js"></script>
</body>
</html>
</#macro>