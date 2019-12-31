<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Regulation.aspx.cs" Inherits="Regulation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Accordion - Collapse content</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#accordion" ).accordion({
      collapsible: true
    });
  } );
  </script>
  <style type="text/css">
        .新增樣式2 {
            font-family: 華康正顏楷體W5;
            color: #000000;
            font-size: x-large;
            text-decoration: blink;
        }
  </style>
</head>
<body>

防止未登入使用者

<h3 class="新增樣式2">國防大學管理學院資訊管理學系碩士班論文指導規定</h3>
<div id="accordion">
  <h3>研究生</h3>
  <div>
    <p>
    <ol>        
        <li>研究生論文指導老師應以資訊管理學系專任老師為優先考量。</li>
        <li>研究生論文指導老師若為本系非專任老師，則必須有一位本系專任老師擔任論文共同指導老師。</li>
        <li>專任老師係指本系具碩士論文指導資格之專任老師（以下簡稱專任老師）。</li>
        <li>非專任老師係指非本系專任老師且具碩士論文指導資格之老師（以下簡稱非專任老師）。</li>
    </ol>
    </p>
  </div>
  <h3>專任老師</h3>
  <div>
    <p>
    <ol>        
        <li>專任老師對於研究生論文撰寫均負有指導之義務與權利。 </li>
        <li>專任老師對於研究生論文指導採計點制。 </li>
        <li>每位專任老師指導研究生論文點數上限計算採下列方式：</li>
        <li>研究生指導論文點數 = 研究生人數 / 專任老師人數</li>
        <li>（如有小數，採無條件進位方式）</li>
        <li>本系專任老師單一指導一位研究生論文撰寫，計點數 1 點，共同指導一位研 究生論文撰寫，計點數 0.5 點。 </li>
        <li>於研究生論文指導點數內，專任老師可以單一指導或是共同指導方式，指導 研究生論文撰寫；此外，如無意願以共同指導方式指導研究生撰寫論文，專 任老師可以選擇放棄共同指導之權利與義務，同時沒有任何專任老師願意擔 任共同指導老師，須經由系務會議討論，做成共同指導老師推選之決議。 </li>
    </ol>
    </p>
  </div>
  <h3>非專任老師</h3>
  <div>
    <p>
    <ol>        
        <li>每位擔任研究生論文指導之非專任老師須主動與本系擔任該研究生共同指 導之專任老師共同討論研究生論文指導模式與相關細節。 </li>
        <li>非專任老師以指導本系研究生以專任老師指導研究生最大員額 1/3 為上限。</li>
    </ol>
    </p>
    </div>
  <h3>附註說明</h3>
  <div>
      <p>
      <ol>        
        <li>專任教師研究生論文指導計點與非專任教師指導研究生上限將分別以一般 組與在職組做為計算基準。  </li>
        <li>上述規定如有未能詳盡之處，另由系務會議決議之。</li>
      </ol>
      </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
  </div>
</div>
 
 
</body>
</html>
</asp:Content>

