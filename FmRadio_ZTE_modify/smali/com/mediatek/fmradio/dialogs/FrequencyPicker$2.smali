.class Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;
.super Ljava/lang/Object;
.source "FrequencyPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/dialogs/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 6
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    invoke-static {v0, p3}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$10(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;I)V

    .line 110
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    # getter for: Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMhz:I
    invoke-static {v1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$1(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 111
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    iget-object v3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    # getter for: Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mKhz:I
    invoke-static {v3}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$2(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    # getter for: Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mMin:I
    invoke-static {v4}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$3(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    # getter for: Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mStep:I
    invoke-static {v5}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$4(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)I

    move-result v5

    # invokes: Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getFrequencyKHz(III)I
    invoke-static {v2, v3, v4, v5}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$5(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;III)I

    move-result v2

    add-int/2addr v1, v2

    .line 110
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$6(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;I)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    # invokes: Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->validateFrequencyRange()V
    invoke-static {v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$7(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    # getter for: Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mOnFrequencyChangedListener:Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;
    invoke-static {v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$8(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    # getter for: Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mOnFrequencyChangedListener:Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;
    invoke-static {v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$8(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$2;->this$0:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    # getter for: Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->mFrequency:I
    invoke-static {v2}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->access$9(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;)I

    move-result v2

    .line 116
    invoke-interface {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;->onFrequencyChanged(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;I)V

    .line 119
    :cond_0
    return-void
.end method
