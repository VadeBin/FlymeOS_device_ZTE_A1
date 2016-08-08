.class Lcom/android/internal/app/ResolverShareActivity$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ResolverShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverShareActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverShareActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/app/ResolverShareActivity$1;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/app/ResolverShareActivity$1;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    # getter for: Lcom/android/internal/app/ResolverShareActivity;->mAdapter:Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverShareActivity;->access$000(Lcom/android/internal/app/ResolverShareActivity;)Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverShareActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 121
    return-void
.end method
