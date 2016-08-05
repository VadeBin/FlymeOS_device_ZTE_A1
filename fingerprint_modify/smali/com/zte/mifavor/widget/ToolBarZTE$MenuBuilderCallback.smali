.class Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolBarZTE.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/ToolBarZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ToolBarZTE;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/widget/ToolBarZTE;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;->this$0:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/ToolBarZTE;Lcom/zte/mifavor/widget/ToolBarZTE$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/widget/ToolBarZTE;
    .param p2, "x1"    # Lcom/zte/mifavor/widget/ToolBarZTE$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;-><init>(Lcom/zte/mifavor/widget/ToolBarZTE;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;->this$0:Lcom/zte/mifavor/widget/ToolBarZTE;

    # getter for: Lcom/zte/mifavor/widget/ToolBarZTE;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/zte/mifavor/widget/ToolBarZTE;->access$000(Lcom/zte/mifavor/widget/ToolBarZTE;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;->this$0:Lcom/zte/mifavor/widget/ToolBarZTE;

    # getter for: Lcom/zte/mifavor/widget/ToolBarZTE;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/zte/mifavor/widget/ToolBarZTE;->access$000(Lcom/zte/mifavor/widget/ToolBarZTE;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;->this$0:Lcom/zte/mifavor/widget/ToolBarZTE;

    # getter for: Lcom/zte/mifavor/widget/ToolBarZTE;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    invoke-static {v0}, Lcom/zte/mifavor/widget/ToolBarZTE;->access$100(Lcom/zte/mifavor/widget/ToolBarZTE;)Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;->this$0:Lcom/zte/mifavor/widget/ToolBarZTE;

    # getter for: Lcom/zte/mifavor/widget/ToolBarZTE;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    invoke-static {v0}, Lcom/zte/mifavor/widget/ToolBarZTE;->access$100(Lcom/zte/mifavor/widget/ToolBarZTE;)Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 75
    :cond_0
    return-void
.end method
