.class Lcom/zte/mifavor/widget/AlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Lcom/zte/mifavor/widget/AlertController;)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1025
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

    # getter for: Lcom/zte/mifavor/widget/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/zte/mifavor/widget/AlertController;->access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1026
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

    # getter for: Lcom/zte/mifavor/widget/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertController;->access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1029
    :cond_0
    return-void
.end method
