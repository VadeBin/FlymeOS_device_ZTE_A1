.class Lcom/zte/mifavor/widget/NumberPickerZTE$2;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$2;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 712
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$2;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->hideSoftInput()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$000(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    .line 713
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$2;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zte/extres/R$id;->increment:I

    if-ne v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$2;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v2, v3, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$300(Lcom/zte/mifavor/widget/NumberPickerZTE;ZJ)V

    .line 719
    :goto_0
    return v2

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$2;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v1, 0x0

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v1, v3, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$300(Lcom/zte/mifavor/widget/NumberPickerZTE;ZJ)V

    goto :goto_0
.end method
