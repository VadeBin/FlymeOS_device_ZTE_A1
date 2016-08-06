.class Lcom/android/shotcutkey/SelectAppActivity$2;
.super Ljava/lang/Object;
.source "SelectAppActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/SelectAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/SelectAppActivity;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/SelectAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/SelectAppActivity$2;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$2;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectAppActivity;->access$10(Lcom/android/shotcutkey/SelectAppActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearTextFilter()V

    .line 139
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$2;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectAppActivity;->access$10(Lcom/android/shotcutkey/SelectAppActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method
