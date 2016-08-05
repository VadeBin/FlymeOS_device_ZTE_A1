.class Lcom/zte/mifavor/widget/TimePickerZTE$3;
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
    .line 214
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 7
    .param p1, "spinner"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 217
    iget-object v5, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->updateInputState()V
    invoke-static {v5}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$000(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 218
    iget-object v5, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v5}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$400(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v1

    .line 219
    .local v1, "minValue":I
    iget-object v5, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v5}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$400(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v0

    .line 220
    .local v0, "maxValue":I
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 221
    iget-object v5, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v5}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$500(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 222
    .local v2, "newHour":I
    iget-object v5, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    .line 223
    iget-object v5, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-object v6, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z
    invoke-static {v6}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$100(Lcom/zte/mifavor/widget/TimePickerZTE;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    # setter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z
    invoke-static {v5, v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$102(Lcom/zte/mifavor/widget/TimePickerZTE;Z)Z

    .line 224
    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V
    invoke-static {v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$200(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$500(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 236
    .end local v2    # "newHour":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V
    invoke-static {v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$300(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 237
    return-void

    .restart local v2    # "newHour":I
    :cond_2
    move v3, v4

    .line 223
    goto :goto_0

    .line 227
    .end local v2    # "newHour":I
    :cond_3
    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    .line 228
    iget-object v5, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v5}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$500(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 229
    .restart local v2    # "newHour":I
    iget-object v5, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    .line 231
    iget-object v5, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-object v6, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z
    invoke-static {v6}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$100(Lcom/zte/mifavor/widget/TimePickerZTE;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    # setter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z
    invoke-static {v5, v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$102(Lcom/zte/mifavor/widget/TimePickerZTE;Z)Z

    .line 232
    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V
    invoke-static {v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$200(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 234
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$500(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 231
    goto :goto_2
.end method
