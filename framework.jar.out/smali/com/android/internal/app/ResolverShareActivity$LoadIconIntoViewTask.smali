.class Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;
.super Landroid/os/AsyncTask;
.source "ResolverShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconIntoViewTask"
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
.field final mTargetView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/app/ResolverShareActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverShareActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1179
    iput-object p2, p0, Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    .line 1180
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;)Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    .locals 3
    .param p1, "params"    # [Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .prologue
    .line 1184
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 1185
    .local v0, "info":Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
    iget-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    iget-object v2, v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverShareActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1188
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1175
    check-cast p1, [Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;->doInBackground([Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;)Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1194
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1175
    check-cast p1, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverShareActivity$LoadIconIntoViewTask;->onPostExecute(Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;)V

    return-void
.end method
