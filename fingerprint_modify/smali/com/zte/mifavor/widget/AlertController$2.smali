.class Lcom/zte/mifavor/widget/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/AlertController;->setupDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/AlertController;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/AlertController;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$2;->this$0:Lcom/zte/mifavor/widget/AlertController;

    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController$2;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 445
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$2;->this$0:Lcom/zte/mifavor/widget/AlertController;

    # getter for: Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/mifavor/widget/AlertController;->access$800(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$dimen;->alert_dialog_round_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 449
    .local v0, "roundOffset":I
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$2;->val$parent:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 451
    .end local v0    # "roundOffset":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method
