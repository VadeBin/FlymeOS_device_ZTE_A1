.class public Lcom/android/shotcutkey/DetailActivity;
.super Lcom/android/shotcutkey/MyActivity;
.source "DetailActivity.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private imageDetail:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mKeyMode:I

.field private mOK:Landroid/widget/Button;

.field private mResources:Landroid/content/res/Resources;

.field private selectApp:Landroid/widget/Button;

.field private textInfo:Landroid/widget/TextView;

.field private textTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "detailActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/DetailActivity;->TAG:Ljava/lang/String;

    .line 21
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/DetailActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/shotcutkey/MyActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/DetailActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/shotcutkey/DetailActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/shotcutkey/DetailActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/shotcutkey/DetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 39
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v2, 0x7f03003e

    invoke-virtual {p0, v2}, Lcom/android/shotcutkey/DetailActivity;->setContentView(I)V

    .line 43
    iput-object p0, p0, Lcom/android/shotcutkey/DetailActivity;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/android/shotcutkey/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->mResources:Landroid/content/res/Resources;

    .line 46
    invoke-virtual {p0}, Lcom/android/shotcutkey/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->mIntent:Landroid/content/Intent;

    .line 47
    invoke-virtual {p0}, Lcom/android/shotcutkey/DetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "mode"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/shotcutkey/DetailActivity;->mKeyMode:I

    .line 54
    const v2, 0x7f060062

    invoke-virtual {p0, v2}, Lcom/android/shotcutkey/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->imageDetail:Landroid/widget/ImageView;

    .line 55
    iget-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->imageDetail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/shotcutkey/DetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/shotcutkey/DetailActivity;->mIntent:Landroid/content/Intent;

    .line 56
    const-string v5, "image"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 55
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    const v2, 0x7f060063

    invoke-virtual {p0, v2}, Lcom/android/shotcutkey/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->textTitle:Landroid/widget/TextView;

    .line 59
    iget-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->textTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/shotcutkey/DetailActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "app"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v2, 0x7f060064

    invoke-virtual {p0, v2}, Lcom/android/shotcutkey/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->textInfo:Landroid/widget/TextView;

    .line 62
    iget-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->textInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/shotcutkey/DetailActivity;->mIntent:Landroid/content/Intent;

    const-string v4, "info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v2, 0x7f060065

    invoke-virtual {p0, v2}, Lcom/android/shotcutkey/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->selectApp:Landroid/widget/Button;

    .line 65
    iget-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "has_button"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 66
    .local v1, "hasButton":Z
    sget-boolean v2, Lcom/android/shotcutkey/DetailActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lcom/android/shotcutkey/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hasButton = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    if-nez v1, :cond_1

    .line 69
    iget-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->selectApp:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    :goto_0
    const v2, 0x7f060066

    invoke-virtual {p0, v2}, Lcom/android/shotcutkey/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->mOK:Landroid/widget/Button;

    .line 86
    iget-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->mOK:Landroid/widget/Button;

    new-instance v3, Lcom/android/shotcutkey/DetailActivity$2;

    invoke-direct {v3, p0}, Lcom/android/shotcutkey/DetailActivity$2;-><init>(Lcom/android/shotcutkey/DetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/android/shotcutkey/DetailActivity;->selectApp:Landroid/widget/Button;

    new-instance v3, Lcom/android/shotcutkey/DetailActivity$1;

    invoke-direct {v3, p0}, Lcom/android/shotcutkey/DetailActivity$1;-><init>(Lcom/android/shotcutkey/DetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 98
    .local v0, "id":I
    sget-boolean v1, Lcom/android/shotcutkey/DetailActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcom/android/shotcutkey/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onOptionsItemSelected() item.id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/shotcutkey/DetailActivity;->finish()V

    .line 102
    const/4 v1, 0x1

    .line 104
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
