<%@ Control AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:DnnCssInclude ID="dataTableBootstrapCSS" runat="server" FilePath="assets/plugins/dataTables/dataTables.bootstrap.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="tableToolsCSS" runat="server" FilePath="assets/plugins/dataTables/dataTables.tableTools.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="dataTableCSS" runat="server" FilePath="DataTables.css" PathNameAlias="SkinPath" />


<div class="margin-bottom-20">
    <h2><dnn:TITLE runat="server" id="dnnTITLE" CssClass="TitleH2" /></h2>
    <div id="ContentPane" runat="server"></div>
	<div class="clear"></div>
</div>

<dnn:DnnJsInclude ID="dataTablesJS" runat="server" FilePath="assets/plugins/dataTables/jquery.dataTables.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="tableTools" runat="server" FilePath="assets/plugins/dataTables/dataTables.tableTools.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="bootstrapJS" runat="server" FilePath="assets/plugins/dataTables/dataTables.bootstrap.js" PathNameAlias="SkinPath" />


<script>
$(document).ready(function () {
        $('#example').DataTable({
            dom: 'T<"clear">lfrtip',
            tableTools: {
                "sSwfPath": "<%= SkinPath%>assets/plugins/dataTables/swf/copy_csv_xls_pdf.swf"
        }
    });
});
