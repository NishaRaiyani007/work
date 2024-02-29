<%@ Control Language="C#" AutoEventWireup="true" CodeFile="left.ascx.cs" Inherits="left" %>
<asp:TreeView ID="TreeView1" runat="server" Height="210px" Width="101px">
    <ParentNodeStyle ForeColor="#400040" />
    <Nodes>
        <asp:TreeNode Text="All Books" Value="All Books" Expanded="True">
            <asp:TreeNode Text="Computer Education" Value="Computer Education" Expanded="False">
                <asp:TreeNode NavigateUrl="~/progcatbook.aspx" Text="Programming Books" Value="Programming Books">
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/dbcatbook.aspx" Text="Database Knowledge" Value="Database Knowledge">
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/htmlcatbook.aspx" Text="HTML &amp; Web Designing" Value="HTML &amp; Web Designing">
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="Family" Value="Family" Expanded="False">
                <asp:TreeNode NavigateUrl="~/parenting.aspx" Text="Parenting &amp; Family" Value="Parenting &amp; Family">
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/familyactivity.aspx" Text="Family Activity" Value="Family Activity">
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/motherhood.aspx" Text="Motherhood" Value="Motherhood"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/familyrelation.aspx" Text="Family Relationship" Value="Family Relationship">
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="Cooking" Value="Cooking" Expanded="False">
                <asp:TreeNode NavigateUrl="~/cake.aspx" Text="Cakes" Value="Cakes"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/baking.aspx" Text="Baking" Value="Baking"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/vegetable.aspx" Text="Vegetables &amp; Vegetarian" Value="Vegetables &amp; Vegetarian">
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="Science" Value="Science" Expanded="False">
                <asp:TreeNode NavigateUrl="~/earth.aspx" Text="Earth Science" Value="Earth Science">
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/magic.aspx" Text="Magic" Value="Magic"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="Business &amp; Investing" Value="Business &amp; Investing" Expanded="False">
                <asp:TreeNode NavigateUrl="~/finance.aspx" Text="Finances" Value="Finances"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/job.aspx" Text="job Hunting &amp; Careers" Value="job Hunting &amp; Careers">
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="Religion" Value="Religion" Expanded="False">
                <asp:TreeNode NavigateUrl="~/sanskrit.aspx" Text="Sanskrit" Value="Sanskrit"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/hinduism.aspx" Text="Hinduism" Value="Hinduism"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/bhagavadgita.aspx" Text="Bhagavad Gita" Value="Bhagavad Gita">
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="children Books" Value="children Books" Expanded="False">
                <asp:TreeNode NavigateUrl="~/baby.aspx" Text="Babies" Value="Babies"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/bedstory.aspx" Text="Bed Stories" Value="Bed Stories"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/picturebook.aspx" Text="Picture Books" Value="Picture Books">
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="Entertainment" Value="Entertainment" Expanded="False">
                <asp:TreeNode NavigateUrl="~/movie.aspx" Text="Movies" Value="Movies"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/music.aspx" Text="Music" Value="Music"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/puzzle.aspx" Text="Puzzel &amp; Games" Value="Puzzel &amp; Games">
                </asp:TreeNode>
            </asp:TreeNode>
        </asp:TreeNode>
    </Nodes>
    <RootNodeStyle ForeColor="Maroon" />
</asp:TreeView>
&nbsp; &nbsp;
