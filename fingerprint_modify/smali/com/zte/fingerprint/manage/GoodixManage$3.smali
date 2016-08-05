.class Lcom/zte/fingerprint/manage/GoodixManage$3;
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
    .line 181
    iput-object p1, p0, Lcom/zte/fingerprint/manage/GoodixManage$3;->this$0:Lcom/zte/fingerprint/manage/GoodixManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/zte/fingerprint/manage/GoodixManage$3;->this$0:Lcom/zte/fingerprint/manage/GoodixManage;

    invoke-virtual {v0}, Lcom/zte/fingerprint/manage/GoodixManage;->deleteFinger()V

    .line 184
    return-void
.end method
