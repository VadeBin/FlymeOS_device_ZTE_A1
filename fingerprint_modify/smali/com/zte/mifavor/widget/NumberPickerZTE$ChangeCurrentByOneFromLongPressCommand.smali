.class Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 0

    .prologue
    .line 2438
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 2438
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 2442
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2443
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-boolean v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    .line 2448
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mLongPressUpdateInterval:J
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2600(Lcom/zte/mifavor/widget/NumberPickerZTE;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2449
    return-void
.end method
