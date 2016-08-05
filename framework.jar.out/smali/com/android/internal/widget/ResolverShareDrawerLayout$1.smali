.class Lcom/android/internal/widget/ResolverShareDrawerLayout$1;
.super Ljava/lang/Object;
.source "ResolverShareDrawerLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverShareDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ResolverShareDrawerLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ResolverShareDrawerLayout;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/widget/ResolverShareDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverShareDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .locals 3
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 89
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ResolverShareDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverShareDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverShareDrawerLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ResolverShareDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverShareDrawerLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ResolverShareDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverShareDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverShareDrawerLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/internal/widget/ResolverShareDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/ResolverShareDrawerLayout;->access$000(Lcom/android/internal/widget/ResolverShareDrawerLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/ResolverShareDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverShareDrawerLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/widget/ResolverShareDrawerLayout;->smoothScrollTo(IF)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/ResolverShareDrawerLayout;->access$100(Lcom/android/internal/widget/ResolverShareDrawerLayout;IF)V

    .line 92
    :cond_0
    return-void
.end method
