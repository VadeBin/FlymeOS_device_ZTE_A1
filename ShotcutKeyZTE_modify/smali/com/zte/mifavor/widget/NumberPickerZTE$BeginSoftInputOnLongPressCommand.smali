.class Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .prologue
    .line 2477
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->showSoftInput()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2700(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    .line 2482
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v1, 0x1

    # setter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mIngonreMoveEvents:Z
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2802(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2483
    return-void
.end method
