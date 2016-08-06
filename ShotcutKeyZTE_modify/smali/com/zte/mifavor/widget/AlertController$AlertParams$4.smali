.class Lcom/zte/mifavor/widget/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/AlertController$AlertParams;->createListView(Lcom/zte/mifavor/widget/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/zte/mifavor/widget/AlertController;

.field final synthetic val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Lcom/zte/mifavor/widget/AlertController$RecycleListView;Lcom/zte/mifavor/widget/AlertController;)V
    .locals 0

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    iput-object p3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1035
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

    # getter for: Lcom/zte/mifavor/widget/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/zte/mifavor/widget/AlertController;->access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1040
    return-void
.end method
