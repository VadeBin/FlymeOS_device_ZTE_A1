.class Lcom/zte/mifavor/widget/TimePickerZTE$5;
.super Ljava/lang/Object;
.source "TimePickerZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;


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
    .line 271
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 2
    .param p1, "picker"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->updateInputState()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$000(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 275
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestFocus()Z

    .line 276
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$100(Lcom/zte/mifavor/widget/TimePickerZTE;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$102(Lcom/zte/mifavor/widget/TimePickerZTE;Z)Z

    .line 277
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$200(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 278
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$5;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$300(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 279
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
