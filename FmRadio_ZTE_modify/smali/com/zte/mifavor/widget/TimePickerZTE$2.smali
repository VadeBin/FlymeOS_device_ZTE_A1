.class Lcom/zte/mifavor/widget/TimePickerZTE$2;
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
    .line 174
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 177
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->updateInputState()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$000(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 178
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    if-ne p2, v1, :cond_0

    if-eq p3, v2, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    if-ne p3, v1, :cond_2

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$100(Lcom/zte/mifavor/widget/TimePickerZTE;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$102(Lcom/zte/mifavor/widget/TimePickerZTE;Z)Z

    .line 182
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$200(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$300(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 186
    return-void

    .line 181
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
