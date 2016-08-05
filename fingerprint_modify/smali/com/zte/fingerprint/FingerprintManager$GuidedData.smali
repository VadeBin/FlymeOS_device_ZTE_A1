.class public Lcom/zte/fingerprint/FingerprintManager$GuidedData;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedData"
.end annotation


# instance fields
.field private mLastTouch:Lcom/zte/fingerprint/RectParcelable;

.field private mMaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/fingerprint/RectParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mNextTouch:Lcom/zte/fingerprint/RectParcelable;

.field private mProgress:I

.field final synthetic this$0:Lcom/zte/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/FingerprintManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/zte/fingerprint/FingerprintManager;

    .prologue
    const/4 v1, 0x0

    .line 171
    iput-object p1, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mProgress:I

    .line 160
    iput-object v1, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mLastTouch:Lcom/zte/fingerprint/RectParcelable;

    .line 164
    iput-object v1, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mNextTouch:Lcom/zte/fingerprint/RectParcelable;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mMaskList:Ljava/util/ArrayList;

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/zte/fingerprint/FingerprintManager;ILcom/zte/fingerprint/RectParcelable;Lcom/zte/fingerprint/RectParcelable;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "this$0"    # Lcom/zte/fingerprint/FingerprintManager;
    .param p2, "progress"    # I
    .param p3, "lastTouch"    # Lcom/zte/fingerprint/RectParcelable;
    .param p4, "nextTouch"    # Lcom/zte/fingerprint/RectParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/zte/fingerprint/RectParcelable;",
            "Lcom/zte/fingerprint/RectParcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/fingerprint/RectParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "maskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/fingerprint/RectParcelable;>;"
    const/4 v1, 0x0

    .line 177
    iput-object p1, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mProgress:I

    .line 160
    iput-object v1, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mLastTouch:Lcom/zte/fingerprint/RectParcelable;

    .line 164
    iput-object v1, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mNextTouch:Lcom/zte/fingerprint/RectParcelable;

    .line 178
    invoke-virtual {p0, p2}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->setProgress(I)V

    .line 179
    invoke-virtual {p0, p3}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->setLastTouch(Lcom/zte/fingerprint/RectParcelable;)V

    .line 180
    invoke-virtual {p0, p4}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->setNextTouch(Lcom/zte/fingerprint/RectParcelable;)V

    .line 181
    invoke-virtual {p0, p5}, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->setMaskList(Ljava/util/ArrayList;)V

    .line 182
    return-void
.end method


# virtual methods
.method public addMaskList(Lcom/zte/fingerprint/RectParcelable;)V
    .locals 1
    .param p1, "rect"    # Lcom/zte/fingerprint/RectParcelable;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public clearMaskList()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    return-void
.end method

.method public getLastTouch()Lcom/zte/fingerprint/RectParcelable;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mLastTouch:Lcom/zte/fingerprint/RectParcelable;

    return-object v0
.end method

.method public getMaskList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/fingerprint/RectParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mMaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextTouch()Lcom/zte/fingerprint/RectParcelable;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mNextTouch:Lcom/zte/fingerprint/RectParcelable;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mProgress:I

    return v0
.end method

.method public setLastTouch(Lcom/zte/fingerprint/RectParcelable;)V
    .locals 0
    .param p1, "lastTouch"    # Lcom/zte/fingerprint/RectParcelable;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mLastTouch:Lcom/zte/fingerprint/RectParcelable;

    .line 202
    return-void
.end method

.method public setMaskList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/fingerprint/RectParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "maskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/fingerprint/RectParcelable;>;"
    iput-object p1, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mMaskList:Ljava/util/ArrayList;

    .line 222
    return-void
.end method

.method public setNextTouch(Lcom/zte/fingerprint/RectParcelable;)V
    .locals 0
    .param p1, "nextTouch"    # Lcom/zte/fingerprint/RectParcelable;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mNextTouch:Lcom/zte/fingerprint/RectParcelable;

    .line 212
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/zte/fingerprint/FingerprintManager$GuidedData;->mProgress:I

    .line 192
    return-void
.end method
