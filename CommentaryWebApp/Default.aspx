<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="CommentaryWebApp._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
    </head>
    <body>
        
            <form id="form1" runat="server">
                <telerik:RadScriptManager ID="RadScriptManager1" runat="server" EnablePageMethods="true">
                    <Scripts>
                        <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                        <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                        <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js"></asp:ScriptReference>
<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js"></asp:ScriptReference>
<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js"></asp:ScriptReference>
                    </Scripts>
                </telerik:RadScriptManager>
                <script type="text/javascript">
                    //Put your JavaScript code here.

                    //function btn0CopiedToClipboardMsg() {
                    //    if (document.getElementById('msgRow').style.display == 'none') {
                    //        document.getElementById('msgRow').style.display = 'block';
                    //    }

                    //    document.getElementById('btn0Msg').style.display = "block"
                    //}

                    function quickNotes_btn_Click(quickNotes_type = "null") {
                        /* Get the correct text field */
                        if (quickNotes_type == "oApproval") {
                            var copyText = "Forwarded to 'O' for Approval.  Eligible per POCT";
                        }
                        else if (quickNotes_type == "mgrReview") {
                            var copyText = "This account is pending Manager Review.  Review again in 7 days.";
                        }
                        else if (quickNotes_type == "dummy") {
                            var copyText = "Just couldn't resist could you?";
                        }

                        /* Select the text field */
                        copyText.select();
                        copyText.setSelectionRange(0, 99999); /* For mobile devices */

                        /* Copy the text inside the text field */
                        navigator.clipboard.writeText(copyText.value);

                        /* Alert the copied text */
                        alert("Copied the text: " + copyText.value);
                    }

                    function copy_btn_click() {
                        var Pend,
                            Unworked,
                            Rec,
                            WO,
                            Rvw,
                            Acct,
                            Iplan,
                            Pos,
                            Expec,
                            PR,
                            Iplnst,
                            Src,
                            Clm,
                            ClmS,
                            Act,
                            Nxt,
                            FAct,
                            Nxt,
                            NPPD,
                            Add,
                            strA
                            ;

                        var txtAcct     = Document.getElementById("txtAcct").Text,
                            chkPend     = Document.getElementById("chkPend").Checked,
                            chkUnworked = Document.getElementById("chkUnworked").Checked,
                            chkRec      = Document.getElementById("chkRec").Checked,
                            chkWO       = Document.getElementById("chkWO").Checked,
                            txtAcct     = Document.getElementById("txtAcct").Text,
                            txtIplan    = Document.getElementById("txtIplan").Text,
                            cmbPos      = Document.getElementById("cmbPos").SelectedText,
                            txtExpec    = Document.getElementById("txtExpec").Text,
                            txtPR       = Document.getElementById("txtPR").Text,
                            cmbRvw      = Document.getElementById("cmbRvw").SelectedText,
                            cmbIplnst   = Document.getElementById("cmbIplnst").SelectedText,
                            cmbSrc      = Document.getElementById("cmbSrc").SelectedText,
                            cmbClm      = Document.getElementById("cmbClm").SelectedText,
                            cmbClmS     = Document.getElementById("cmbClmS").SelectedText,
                            cmbAct      = Document.getElementById("cmbAct").SelectedText,
                            cmbNxt      = Document.getElementById("cmbNxt").SelectedText,
                            cmbFAct     = Document.getElementById("cmbFAct").SelectedText,
                            cmbFNxt     = Document.getElementById("cmbFNxt").SelectedText,
                            txtNPPD     = Document.getElementById("txtNPPD").Text,
                            txtAdd      = Document.getElementById("txtAdd").Text
                            ;

                        if (txtAcct == "") {
                            M
                        }

                    }

                </script>
                <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
                </telerik:RadAjaxManager>
                <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" Height="200px" Width="300px">
            
                    <%--<div id="quickNotes">
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <telerik:RadPushButton ID="btn0" runat="server" Text="O Approval" OnClick="btnO_Click">
                                    </telerik:RadPushButton>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <telerik:RadPushButton ID="btnMgr" runat="server" Text="Mgr Review" OnClick="btnMgr_Click">
                                    </telerik:RadPushButton>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <telerik:RadPushButton ID="btnDummy" runat="server" Text="DO NOT CLICK" OnClick="btnDummy_Click">
                                    </telerik:RadPushButton>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="msgRow" style="display:none">
                                <asp:TableCell>
                                    <asp:Literal ID="btn0Msg" Text="<span style='display:none; color:darkslateblue'>Note copied to clipboard</span>" Mode="Encode" Visible="false" runat="server"/>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Literal ID="btnMgrMsg" Text="<span style='display:none; color:darkslateblue'>Note copied to clipboard</span>" Mode="Encode" Visible="false" runat="server" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>

                    </div>--%>

                    <div id="quickNotes">
                        <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" Height="200px" Width="300px">
                            <span>
                                <telerik:RadPushButton ID="btn0" runat="server" Text="O Approval" OnClick="btnO_Click">
                                </telerik:RadPushButton>
                                <asp:Literal ID="approvalMsg" Text="<span style='display:none; color:darkslateblue'>Note copied to clipboard</span>" Mode="Encode" Visible="false" runat="server"/>
                            </span>
                            <br />
                            <span>
                                <telerik:RadPushButton ID="btnMgr" runat="server" Text="Mgr Review" OnClick="btnMgr_Click">
                                </telerik:RadPushButton>
                                <asp:Literal ID="mgrMsg" Text="<span style='display:none; color:darkslateblue'>Note copied to clipboard</span>" Mode="Encode" Visible="false" runat="server" />
                            </span>
                            <br />
                            <telerik:RadPushButton ID="btnDummy" runat="server" Text="DO NOT CLICK" OnClick="btnDummy_Click">
                            </telerik:RadPushButton>
                        </telerik:RadAjaxPanel>
                    </div>

                    <table>
                        <tr>
                            <td>
                                <telerik:RadLabel runat="server" ID="txtAcctLabel" Text="Acct #" AssociatedControlID="txtAcct"></telerik:RadLabel>
                                <br />
                                <telerik:RadTextBox ID="txtAcct" Runat="server">
                                </telerik:RadTextBox>
                            </td>
                            <td>
                                <telerik:RadLabel runat="server" ID="txtIplanLabel" Text="Iplan" AssociatedControlID="txtIplan"></telerik:RadLabel>
                                <br />
                                <telerik:RadTextBox ID="txtIplan" Runat="server">
                                </telerik:RadTextBox>
                            </td>
                            <td>
                                <telerik:RadLabel runat="server" ID="cmbPosLabel" Text="Plan Position" AssociatedControlID="cmbPos"></telerik:RadLabel>
                                <br />
                                <telerik:RadDropDownList ID="cmbPos" runat="server" SelectedText="Select">
                                    <Items>
                                        <telerik:DropDownListItem runat="server" AccessKey="0" Text="Select" Enabled="False" Selected="True" />
                                        <telerik:DropDownListItem runat="server" AccessKey="1" Text="Primary" />
                                        <telerik:DropDownListItem runat="server" AccessKey="2" Text="Secondary" />
                                        <telerik:DropDownListItem runat="server" AccessKey="3" Text="Tertiary" />
                                    </Items>
                                </telerik:RadDropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <telerik:RadLabel runat="server" ID="txtExpecLabel" Text="Expected $" AssociatedControlID="txtExpec"></telerik:RadLabel>
                                <br />
                                <telerik:RadTextBox ID="txtExpec" Runat="server">
                                </telerik:RadTextBox>
                            </td>
                            <td>
                                <telerik:RadLabel runat="server" ID="txtPRLabel" Text="PR $" AssociatedControlID="txtPR"></telerik:RadLabel>
                            <br />
                            <telerik:RadTextBox ID="txtPR" Runat="server">
                            </telerik:RadTextBox>
                            </td>
                            <td>
                                <telerik:RadLabel runat="server" ID="cmbRvwLabel" Text="Denial Reason" AssociatedControlID="cmbRvw"></telerik:RadLabel>
                                <br />
                                <telerik:RadDropDownList ID="cmbRvw" runat="server">
                                    <Items>
                                        <telerik:DropDownListItem runat="server" AccessKey="0" Text="Select" Enabled="False" Selected="True" />
                                        <telerik:DropDownListItem runat="server" AccessKey="1" Text="Additional Documentation" />
                                        <telerik:DropDownListItem runat="server" AccessKey="2" Text="Coding" />
                                        <telerik:DropDownListItem runat="server" AccessKey="3" Text="Medical Necessity" />
                                        <telerik:DropDownListItem runat="server" AccessKey="4" Text="No Auth" />
                                        <telerik:DropDownListItem runat="server" AccessKey="5" Text="Timely" />
                                    </Items>
                                </telerik:RadDropDownList>
                            </td>
                        </tr>
                    </table>

                    <%--<div>
                        <div style="float:left">
                            <telerik:RadLabel runat="server" ID="txtAcctLabel" Text="Acct #" AssociatedControlID="txtAcct"></telerik:RadLabel>
                            <br />
                            <telerik:RadTextBox ID="txtAcct" Runat="server">
                            </telerik:RadTextBox>
                        </div>
                        <div>
                            <telerik:RadLabel runat="server" ID="txtIplanLabel" Text="Iplan" AssociatedControlID="txtIplan"></telerik:RadLabel>
                            <br />
                            <telerik:RadTextBox ID="txtIplan" Runat="server">
                            </telerik:RadTextBox>
                        </div>
                        <div style="float:left">
                            <telerik:RadLabel runat="server" ID="txtExpecLabel" Text="Expected $" AssociatedControlID="txtExpec"></telerik:RadLabel>
                            <br />
                            <telerik:RadTextBox ID="txtExpec" Runat="server">
                            </telerik:RadTextBox>
                        </div>
                        <div>
                            <telerik:RadLabel runat="server" ID="txtPRLabel" Text="PR $" AssociatedControlID="txtPR"></telerik:RadLabel>
                            <br />
                            <telerik:RadTextBox ID="txtPR" Runat="server">
                            </telerik:RadTextBox>
                        </div>
                        <div style="float:right">
                            <telerik:RadLabel runat="server" ID="cmbPosLabel" Text="Plan Position" AssociatedControlID="cmbPos"></telerik:RadLabel>
                            <br />
                            <telerik:RadDropDownList ID="cmbPos" runat="server"></telerik:RadDropDownList>
                        </div>
                        <div style="float:right">
                            <telerik:RadLabel runat="server" ID="cmbRvwLabel" Text="Denial Reason" AssociatedControlID="cmbRvw"></telerik:RadLabel>
                            <br />
                            <telerik:RadDropDownList ID="cmbRvw" runat="server"></telerik:RadDropDownList>
                        </div>
                    </div>--%>

                    <div id="reviewSummary">
                        <span>
                            <telerik:RadCheckBox ID="chkPend" runat="server" Text="Pending Financial"></telerik:RadCheckBox>
                            <telerik:RadCheckBox ID="chkRec" runat="server" Text="Recovery"></telerik:RadCheckBox>
                            <telerik:RadCheckBox ID="chkWO" runat="server" Text="WriteOff"></telerik:RadCheckBox>
                            <telerik:RadCheckBox ID="chkUnworked" runat="server" Text="Unworked"></telerik:RadCheckBox>
                        </span>
                        <div>
                            <table>
                                <tr>
                                    <td>
                                        <telerik:RadLabel runat="server" ID="cmbIplnstLabel" Text="Iplan Status" AssociatedControlID="cmbIplnst"></telerik:RadLabel>
                                        <br />
                                        <telerik:RadDropDownList ID="cmbIplnst" runat="server">
                                            <Items>
                                                <telerik:DropDownListItem runat="server" AccessKey="0" Text="Select" Enabled="False" Selected="True" />
                                                <telerik:DropDownListItem runat="server" AccessKey="1" Text="ACTIVE" />
                                                <telerik:DropDownListItem runat="server" AccessKey="2" Text="INACTIVE" />
                                            </Items>
                                        </telerik:RadDropDownList>
                                    </td>
                                    <td>
                                        <telerik:RadLabel runat="server" ID="cmbSrcLabel" Text="Source" AssociatedControlID="cmbSrc"></telerik:RadLabel>
                                        <br />
                                        <telerik:RadDropDownList ID="cmbSrc" runat="server">
                                            <Items>
                                                <telerik:DropDownListItem runat="server" AccessKey="0" Text="Select" Enabled="False" Selected="True" />
                                                <telerik:DropDownListItem runat="server" AccessKey="1" Text="Availity" />
                                                <telerik:DropDownListItem runat="server" AccessKey="2" Text="IPlan Tool" />
                                                <telerik:DropDownListItem runat="server" AccessKey="3" Text="Passport" />
                                                <telerik:DropDownListItem runat="server" AccessKey="4" Text="Payer Call" />
                                                <telerik:DropDownListItem runat="server" AccessKey="5" Text="Payer Portal" />
                                            </Items>
                                        </telerik:RadDropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <telerik:RadLabel runat="server" ID="cmbClmLabel" Text="Claim Status" AssociatedControlID="cmbClm"></telerik:RadLabel>
                                        <br />
                                        <telerik:RadDropDownList ID="cmbClm" runat="server">
                                            <Items>
                                                <telerik:DropDownListItem runat="server" AccessKey="0" Text="Select" Enabled="False" Selected="True" />
                                                <telerik:DropDownListItem runat="server" AccessKey="1" Text="VALID" />
                                                <telerik:DropDownListItem runat="server" AccessKey="2" Text="INVALID" />
                                            </Items>
                                        </telerik:RadDropDownList>
                                    </td>
                                    <td>
                                        <telerik:RadLabel runat="server" ID="cmbClmSLabel" Text="Source" AssociatedControlID="cmbClmS"></telerik:RadLabel>
                                        <br />
                                        <telerik:RadDropDownList ID="cmbClmS" runat="server">
                                            <Items>
                                                <telerik:DropDownListItem runat="server" AccessKey="0" Text="Select" Enabled="False" Selected="True" />
                                                <telerik:DropDownListItem runat="server" AccessKey="1" Text="Availity" />
                                                <telerik:DropDownListItem runat="server" AccessKey="2" Text="OnBase" />
                                                <telerik:DropDownListItem runat="server" AccessKey="3" Text="Payer Phone Call" />
                                                <telerik:DropDownListItem runat="server" AccessKey="4" Text="Payer Portal" />
                                            </Items>
                                        </telerik:RadDropDownList>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <div id="validationDetails">
                        <table>
                            <tr>
                                <td>
                                    <telerik:RadLabel runat="server" ID="cmbActLabel" Text="Action Taken" AssociatedControlID="cmbAct"></telerik:RadLabel>
                                    <br />
                                    <telerik:RadDropDownList ID="cmbAct" runat="server">
                                        <Items>
                                            <telerik:DropDownListItem runat="server" AccessKey="0" Text="Select" Enabled="False" Selected="True" />
                                            <telerik:DropDownListItem runat="server" AccessKey="1" Text="Closed as Not a True Denial" />
                                            <telerik:DropDownListItem runat="server" AccessKey="2" Text="Sent for Clinical Review" />
                                            <telerik:DropDownListItem runat="server" AccessKey="3" Text="Sent for IINND" />
                                            <telerik:DropDownListItem runat="server" AccessKey="4" Text="Sent for Pending / HIM" />
                                            <telerik:DropDownListItem runat="server" AccessKey="5" Text="Sent for Technical Review" />
                                        </Items>
                                    </telerik:RadDropDownList>
                                </td>
                                <td>
                                    <telerik:RadLabel runat="server" ID="cmbNxtLabel" Text="Next Steps" AssociatedControlID="cmbNxt"></telerik:RadLabel>
                                    <br />
                                    <telerik:RadDropDownList ID="cmbNxt" runat="server">
                                        <Items>
                                            <telerik:DropDownListItem runat="server" AccessKey="0" Text="Select" Enabled="False" Selected="True" />
                                            <telerik:DropDownListItem runat="server" AccessKey="1" Text="Availity" />
                                            <telerik:DropDownListItem runat="server" AccessKey="2" Text="OnBase" />
                                            <telerik:DropDownListItem runat="server" AccessKey="3" Text="Payer Phone Call" />
                                            <telerik:DropDownListItem runat="server" AccessKey="4" Text="Payer Portal" />
                                        </Items>
                                    </telerik:RadDropDownList>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div>
                        <table>
                            <tr>
                                <td>
                                    <telerik:RadLabel runat="server" ID="cmbFActLabel" Text="Action Taken" AssociatedControlID="cmbFAct"></telerik:RadLabel>
                                    <br />
                                    <telerik:RadDropDownList ID="cmbFAct" runat="server">
                                        <Items>
                                            <telerik:DropDownListItem runat="server" AccessKey="0" Text="Select" Enabled="False" Selected="True" />
                                            <telerik:DropDownListItem runat="server" AccessKey="1" Text="Closed for Not A True Denial" />
                                            <telerik:DropDownListItem runat="server" AccessKey="2" Text="submitted for Write-Off" />
                                            <telerik:DropDownListItem runat="server" AccessKey="3" Text="submitted for Recovery" />
                                        </Items>
                                    </telerik:RadDropDownList>
                                </td>
                                <td>
                                    <telerik:RadLabel runat="server" ID="cmbFNxtLabel" Text="Next Steps" AssociatedControlID="cmbFNxt"></telerik:RadLabel>
                                    <br />
                                    <telerik:RadDropDownList ID="cmbFNxt" runat="server">
                                        <Items>
                                            <telerik:DropDownListItem runat="server" AccessKey="0" Text="Select" Enabled="False" Selected="True" />
                                            <telerik:DropDownListItem runat="server" AccessKey="1" Text="Appeal Shell Closed" />
                                            <telerik:DropDownListItem runat="server" AccessKey="2" Text="Pending eTran approval" />
                                        </Items>
                                    </telerik:RadDropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <telerik:RadCheckBox ID="chkPPD" runat="server" Text="PPD Change?"></telerik:RadCheckBox>
                                </td>
                                <td>
                                    <telerik:RadLabel runat="server" ID="txtNPPDLabel" Text="New PPD" AssociatedControlID="txtNPPD"></telerik:RadLabel>
                                    <br />
                                    <telerik:RadTextBox ID="txtNPPD" Runat="server">
                                    </telerik:RadTextBox>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div id="additionalComments">
                        <telerik:RadEditor RenderMode="Lightweight" ID="txtAdd" runat="server" ContentAreaMode="div" Width="500" Height="500" Skin="Silk">
                           <Content>
                             <b>Setting inline properties</b>
                           </Content>
                        </telerik:RadEditor>
                    </div>

                    <div>
                        <telerik:RadPushButton ID="btnHelp" runat="server" Text="Help" Style="float: left; vertical-align: middle; margin: 5px">
                        </telerik:RadPushButton>
                        <telerik:RadLabel runat="server" ID="lblTimer" Text="36000" Visible="false" Style="float: left; vertical-align: middle" ></telerik:RadLabel>
                        <telerik:RadPushButton ID="btnCopy" runat="server" Text="Copy" Style="margin: 5px; vertical-align: middle" OnClick="btnCopy_Click()">
                        </telerik:RadPushButton>
                        <telerik:RadPushButton ID="btnClear" runat="server" Text="Clear" Style="margin: 5px; vertical-align: middle">
                        </telerik:RadPushButton>
                    </div>
                </telerik:RadAjaxPanel>
            </form>
        
    </body>
</html>
