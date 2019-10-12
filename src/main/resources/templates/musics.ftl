<html>

<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="container">
    <div class="row" >
        <div class ="col-md-4">
<ul class ="nav nav-tabs">
  <li role="presentation" class="active"><a href=" ">列表</a></li>
  <li role="presentation"><a href=" ">新增</a></li>
  <li role="presentation"><a href=" ">搜索</a></li>
</ul>
</div>
<div class ="col-md-8">

<table class="table table-striped">
        <thead>
        <th>ID</th><th>歌曲</th><th>歌手</th><th>列表</th><th>新增</th><th>搜索</th>
        </thead>
        <tbody>

<#list musics as music123>

<tr>
<td>${music123.id}</td><td>${music123.songname}</td><td>${music123.singer}</td>
<td><a href = "music/add/{music.id}">增加</a></td>
<td><a href = "music/delete/{music.id}">删除</a></td>
<td><a href = "music/modify/{music.id}">修改</a></td>
</tr>

</#list>
</table>
</body>
</html>
