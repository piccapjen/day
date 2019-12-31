<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Regulation2.aspx.cs" Inherits="Regulation" %>

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
</head>
<body>

防止未登入使用者


<div id="accordion">
  <h3>國防大學管理學院資訊管理學系碩士班論文計畫書審查規定</h3>
  <div>
    <p>
    <ol>
        <li>全時組研究生得於第三至七學期第三週結束前，公餘進修組得於第四至七學期第三週結束前，申請「論文計畫書審查」，並繳交相關表格及論文計畫書。</li>
        <li>論文計畫書審查由本系學術委員會召集人指派專任教師(至少三位)進行書面審查 ，研究生需依審查意見進行書面修改重新送審，最後須有二分之一以上之審查老師意見為「通過」，該次「論文計畫書審查」即為「通過」。</li>
        <li>若該次論文計畫書之書面審查自開學後九週內未獲「通過」，則全時組及公餘進修組須於系上所安排時間中進行論文計畫書提報，以乙次為限。提報前一週需提交論文計畫書電子檔。參與提報老師由原書面審查老師及系上專任老師共四位以上組成(可含指導教授)。提報結果由原書面審查老師進行投票，評定為「通過」之票數須達二分之一方得視為「通過」。</li>
        <li>論文提報被評定為「不通過」者，此次「論文計畫書審查」即為「不通過」。</li>
        <li>若「論文計畫書審查」於開學後第十五週結束仍未獲通過者，則該次「論文計畫書審查」即為「不通過」，須於次學期方可重提「論文計畫書審查」。</li>
        <li>如有特殊狀況，得經由系務會議決議辦理。</li>
        <li>本規定如有未竟事宜，依相關規定辦理。</li>
    </ol>

</p>
  </div>
  <h3>Section 2</h3>
  <div>
    <p>Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In suscipit faucibus urna. </p>
  </div>
  <h3>Section 3</h3>
  <div>
    <p>Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui. </p>
    <ol>
      <li>List item one</li>
      <li>List item two</li>
      <li>List item three</li>
    </ol>
  </div>
  <h3>Section 4</h3>
  <div>
    <p>Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. </p><p>Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti so</p>
      <p>ciosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
      <p>&nbsp;</p>
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

