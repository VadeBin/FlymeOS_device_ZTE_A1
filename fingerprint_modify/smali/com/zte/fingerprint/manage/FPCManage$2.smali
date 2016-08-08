.class Lcom/zte/fingerprint/manage/FPCManage$2;
.super Ljava/lang/Object;
.source "FPCManage.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/manage/FPCManage;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/manage/FPCManage;

.field final synthetic val$saveButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/manage/FPCManage;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/manage/FPCManage;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zte/fingerprint/manage/FPCManage$2;->this$0:Lcom/zte/fingerprint/manage/FPCManage;

    iput-object p2, p0, Lcom/zte/fingerprint/manage/FPCManage$2;->val$saveButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 113
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x0

    .line 88
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-le v3, v4, :cond_1

    .line 89
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "newString":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-le v3, v4, :cond_0

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/zte/fingerprint/manage/FPCManage$2;->this$0:Lcom/zte/fingerprint/manage/FPCManage;

    # getter for: Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/fingerprint/manage/FPCManage;->access$000(Lcom/zte/fingerprint/manage/FPCManage;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, p0, Lcom/zte/fingerprint/manage/FPCManage$2;->this$0:Lcom/zte/fingerprint/manage/FPCManage;

    # getter for: Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/zte/fingerprint/manage/FPCManage;->access$000(Lcom/zte/fingerprint/manage/FPCManage;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 95
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 97
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "newString":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/zte/fingerprint/manage/FPCManage$2;->val$saveButton:Landroid/view/View;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 99
    return-void
.end method
