.class Lcom/zte/mifavor/widget/TimePickerZTE$4;
.super Ljava/lang/Object;
.source "TimePickerZTE.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/TimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/TimePickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 255
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$100(Lcom/zte/mifavor/widget/TimePickerZTE;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$102(Lcom/zte/mifavor/widget/TimePickerZTE;Z)Z

    .line 256
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$200(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 257
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$4;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$300(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 258
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
