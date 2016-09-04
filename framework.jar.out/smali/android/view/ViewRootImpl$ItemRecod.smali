.class Landroid/view/ViewRootImpl$ItemRecod;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemRecod"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Landroid/view/ViewRootImpl;

.field public top:I


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Landroid/view/ViewRootImpl$ItemRecod;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/view/ViewRootImpl$ItemRecod;->height:I

    iput v0, p0, Landroid/view/ViewRootImpl$ItemRecod;->top:I

    return-void
.end method
