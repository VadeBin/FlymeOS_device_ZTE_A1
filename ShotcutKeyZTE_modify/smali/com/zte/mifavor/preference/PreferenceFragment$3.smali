.class Lcom/zte/mifavor/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/PreferenceFragment;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceFragment$3;->this$0:Lcom/zte/mifavor/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 412
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment$3;->this$0:Lcom/zte/mifavor/preference/PreferenceFragment;

    # getter for: Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/mifavor/preference/PreferenceFragment;->access$100(Lcom/zte/mifavor/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 413
    .local v0, "selectedItem":Ljava/lang/Object;
    instance-of v2, v0, Lcom/zte/mifavor/preference/Preference;

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment$3;->this$0:Lcom/zte/mifavor/preference/PreferenceFragment;

    # getter for: Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/mifavor/preference/PreferenceFragment;->access$100(Lcom/zte/mifavor/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 415
    .local v1, "selectedView":Landroid/view/View;
    check-cast v0, Lcom/zte/mifavor/preference/Preference;

    .end local v0    # "selectedItem":Ljava/lang/Object;
    invoke-virtual {v0, v1, p2, p3}, Lcom/zte/mifavor/preference/Preference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 418
    .end local v1    # "selectedView":Landroid/view/View;
    :goto_0
    return v2

    .restart local v0    # "selectedItem":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
