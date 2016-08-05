.class Lcom/android/internal/app/ResolverShareActivity$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverShareActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverShareActivity;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/android/internal/app/ResolverShareActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;)Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    .locals 4
    .param p1, "params"    # [Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .prologue
    .line 1158
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 1160
    .local v0, "info":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    const-string v1, "ResolverShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadIconTask doInBackground Enter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/android/internal/app/ResolverShareActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverShareActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1165
    :cond_0
    const-string v1, "ResolverShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadIconTask doInBackground Leave: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", displayIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1155
    check-cast p1, [Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverShareActivity$LoadIconTask;->doInBackground([Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;)Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverShareActivity;->access$000(Lcom/android/internal/app/ResolverShareActivity;)Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 1172
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1155
    check-cast p1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverShareActivity$LoadIconTask;->onPostExecute(Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;)V

    return-void
.end method
