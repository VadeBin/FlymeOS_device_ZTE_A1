.class public Lcom/android/server/pm/AutoLaunchInfo;
.super Ljava/lang/Object;
.source "AutoLaunchInfo.java"


# instance fields
.field private mAutoLaunchComponets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/server/pm/AutoLaunchInfo;->mPackageName:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AutoLaunchInfo;->mAutoLaunchComponets:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public addComponet(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/pm/AutoLaunchInfo;->mAutoLaunchComponets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public getComponents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/pm/AutoLaunchInfo;->mAutoLaunchComponets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/pm/AutoLaunchInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
