.class Lcom/zte/fingerprint/manage/GoodixManage$4;
.super Ljava/lang/Object;
.source "GoodixManage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/manage/GoodixManage;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/manage/GoodixManage;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/manage/GoodixManage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/manage/GoodixManage;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/zte/fingerprint/manage/GoodixManage$4;->this$0:Lcom/zte/fingerprint/manage/GoodixManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 179
    return-void
.end method
