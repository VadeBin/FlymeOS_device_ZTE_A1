.class public Lcom/zte/mifavor/widget/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final LAYOUT_HINT_NONE:I = 0x0

.field public static final LAYOUT_HINT_SIDE:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_DARK:I = 0x4

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x5

.field public static final THEME_HOLO_DARK:I = 0x2

.field public static final THEME_HOLO_LIGHT:I = 0x3

.field public static final THEME_TRADITIONAL:I = 0x1


# instance fields
.field private mAlert:Lcom/zte/mifavor/widget/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 115
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 127
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createThemeContextWrapper"    # Z

    .prologue
    .line 130
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 132
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    .line 133
    new-instance v0, Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/zte/mifavor/widget/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    .line 134
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 138
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    .line 139
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setCancelable(Z)V

    .line 140
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 141
    new-instance v0, Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/zte/mifavor/widget/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/AlertDialog;)Lcom/zte/mifavor/widget/AlertController;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertDialog;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 145
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 146
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 148
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 347
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertController;->installContent()V

    .line 348
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 359
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/zte/mifavor/widget/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 247
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/zte/mifavor/widget/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 233
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 287
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 288
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 256
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 301
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 265
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 314
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 274
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/AlertController;->setButtonPanelLayoutHint(I)V

    .line 219
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/AlertController;->setIcon(I)V

    .line 323
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 327
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 335
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 336
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 337
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/AlertController;->setIcon(I)V

    .line 338
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 341
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/AlertController;->setInverseBackgroundForced(Z)V

    .line 342
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/AlertController;->setView(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/AlertController;->setView(Landroid/view/View;IIII)V

    .line 211
    return-void
.end method
