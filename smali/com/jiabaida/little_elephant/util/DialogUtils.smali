.class public Lcom/jiabaida/little_elephant/util/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;,
        Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;
    }
.end annotation


# static fields
.field private static DialogUtils:Lcom/jiabaida/little_elephant/util/DialogUtils;


# instance fields
.field public loginDialog:Landroid/app/AlertDialog;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field final mHints:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/jiabaida/little_elephant/util/DialogUtils;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/util/DialogUtils;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/util/DialogUtils;->DialogUtils:Lcom/jiabaida/little_elephant/util/DialogUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 95
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mHints:[J

    return-void
.end method

.method public static getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;
    .locals 1

    .line 68
    sget-object v0, Lcom/jiabaida/little_elephant/util/DialogUtils;->DialogUtils:Lcom/jiabaida/little_elephant/util/DialogUtils;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/jiabaida/little_elephant/util/DialogUtils;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/util/DialogUtils;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/util/DialogUtils;->DialogUtils:Lcom/jiabaida/little_elephant/util/DialogUtils;

    .line 71
    :cond_0
    sget-object v0, Lcom/jiabaida/little_elephant/util/DialogUtils;->DialogUtils:Lcom/jiabaida/little_elephant/util/DialogUtils;

    return-object v0
.end method

.method static synthetic lambda$baseAppKeyDialog$5(Landroid/widget/EditText;Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 264
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 265
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x6

    if-ne p4, v0, :cond_0

    .line 266
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    if-eqz p2, :cond_1

    .line 268
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;->onClick(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p0

    const p1, 0x7f0d00a5

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$baseAppKeyDialog$6(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "xzx"

    const-string v0, "baseAppKeyDialog  dismiss()"

    .line 275
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$passWordDialog$1(Landroid/widget/EditText;Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;[ZLandroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 145
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 146
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    const/4 v0, 0x6

    if-ne p5, v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    if-eqz p2, :cond_1

    .line 149
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-boolean p1, p3, p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;->onClick(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p0

    const p1, 0x7f0d009f

    invoke-virtual {p4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$passWordDialog$2(Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;Landroid/view/View;)V
    .locals 1

    const-string p2, "xzx"

    const-string v0, "passWordDialog  dismiss()"

    .line 157
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p1}, Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;->onClick()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$passWordDialog2$3(Landroid/widget/EditText;Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;[ZLandroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 210
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 211
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    const/4 v0, 0x6

    if-ne p5, v0, :cond_0

    .line 212
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    if-eqz p2, :cond_1

    .line 214
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-boolean p1, p3, p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;->onClick(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p0

    const p1, 0x7f0d009f

    invoke-virtual {p4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$passWordDialog2$4(Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;Landroid/view/View;)V
    .locals 1

    const-string p2, "xzx"

    const-string v0, "passWordDialog  dismiss()"

    .line 222
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 225
    invoke-interface {p1}, Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;->onClick()V

    :cond_0
    return-void
.end method


# virtual methods
.method public baseAppKeyDialog(Landroid/content/Context;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;)V
    .locals 7

    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0023

    const/4 v2, 0x0

    .line 242
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080057

    .line 243
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 244
    new-instance v3, Lcom/jiabaida/little_elephant/util/DialogUtils$4;

    invoke-direct {v3, p0}, Lcom/jiabaida/little_elephant/util/DialogUtils$4;-><init>(Lcom/jiabaida/little_elephant/util/DialogUtils;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const v3, 0x7f0d00a3

    .line 256
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v3, 0x7f0801a1

    .line 257
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08003c

    .line 258
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08029e

    .line 259
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d00aa

    .line 260
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 263
    new-instance v1, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, v2, v0, p2, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    new-instance p2, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda0;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 279
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 280
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 285
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    .line 286
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v2

    double-to-int p1, v0

    const/4 v0, -0x2

    invoke-virtual {p2, p1, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public changeFirstPswDialog(Landroid/content/Context;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;)V
    .locals 7

    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0023

    const/4 v2, 0x0

    .line 291
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080057

    .line 292
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0d00a6

    .line 293
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v3, 0x7f0801a1

    .line 294
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08003c

    .line 295
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0800d2

    .line 296
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x8

    .line 297
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda7;-><init>(Lcom/jiabaida/little_elephant/util/DialogUtils;Landroid/widget/EditText;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    new-instance p2, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda6;-><init>(Lcom/jiabaida/little_elephant/util/DialogUtils;)V

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 315
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 316
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 317
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 321
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    .line 322
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v2

    double-to-int p1, v0

    const/4 v0, -0x2

    invoke-virtual {p2, p1, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->loginDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->loginDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const-string v0, "xzx"

    const-string v1, "\u505c\u6b62\u52a8\u753b"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->loginDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAlertDialog()Landroid/app/AlertDialog;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$changeFirstPswDialog$7$com-jiabaida-little_elephant-util-DialogUtils(Landroid/widget/EditText;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 300
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 301
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x6

    if-ne p4, v0, :cond_0

    .line 302
    iget-object p3, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V

    if-eqz p2, :cond_1

    .line 304
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;->onClick(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    const p2, 0x7f0d009f

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$changeFirstPswDialog$8$com-jiabaida-little_elephant-util-DialogUtils(Landroid/view/View;)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$passWordDialog$0$com-jiabaida-little_elephant-util-DialogUtils([ZLandroid/widget/EditText;Landroid/content/Context;Landroid/view/View;)V
    .locals 7

    .line 136
    iget-object p4, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mHints:[J

    array-length v0, p4

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p4, v1, p4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object p4, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mHints:[J

    array-length v0, p4

    sub-int/2addr v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, p4, v0

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object p4, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mHints:[J

    aget-wide v5, p4, v2

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long p4, v3, v5

    if-gtz p4, :cond_0

    .line 140
    aput-boolean v1, p1, v2

    const p1, 0x7f0d00a7

    .line 141
    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public passWordDialog(Landroid/content/Context;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;)V
    .locals 11

    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0023

    const/4 v2, 0x0

    .line 98
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080057

    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/EditText;

    .line 100
    new-instance v2, Lcom/jiabaida/little_elephant/util/DialogUtils$1;

    invoke-direct {v2, p0}, Lcom/jiabaida/little_elephant/util/DialogUtils$1;-><init>(Lcom/jiabaida/little_elephant/util/DialogUtils;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const v2, 0x7f0d00a6

    .line 112
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v2, 0x7f0801a1

    .line 114
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08003c

    .line 115
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    const v3, 0x7f08029e

    .line 116
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0800d2

    .line 117
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v7, v1, [Z

    const/4 v1, 0x0

    aput-boolean v1, v7, v1

    .line 120
    new-instance v6, Lcom/jiabaida/little_elephant/util/DialogUtils$2;

    invoke-direct {v6, p0, v4, v7, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils$2;-><init>(Lcom/jiabaida/little_elephant/util/DialogUtils;Landroid/widget/EditText;[ZLandroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v5, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v7, v4, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda8;-><init>(Lcom/jiabaida/little_elephant/util/DialogUtils;[ZLandroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v10, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda4;

    move-object v3, v10

    move-object v5, v0

    move-object v6, p2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda4;-><init>(Landroid/widget/EditText;Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;[ZLandroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance p2, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0, p3}, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda1;-><init>(Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;)V

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 170
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v2

    double-to-int p1, v0

    const/4 p3, -0x2

    invoke-virtual {p2, p1, p3}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public passWordDialog2(Landroid/content/Context;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;)V
    .locals 11

    .line 175
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0023

    const/4 v2, 0x0

    .line 179
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080057

    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/EditText;

    .line 181
    new-instance v2, Lcom/jiabaida/little_elephant/util/DialogUtils$3;

    invoke-direct {v2, p0}, Lcom/jiabaida/little_elephant/util/DialogUtils$3;-><init>(Lcom/jiabaida/little_elephant/util/DialogUtils;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const v2, 0x7f0d00a7

    .line 193
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v2, 0x7f0801a1

    .line 195
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08003c

    .line 196
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    .line 198
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v7, v1, [Z

    const/4 v10, 0x0

    aput-boolean v1, v7, v10

    .line 209
    new-instance v1, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;

    move-object v3, v1

    move-object v5, v0

    move-object v6, p2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;-><init>(Landroid/widget/EditText;Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;[ZLandroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    new-instance p2, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda2;

    invoke-direct {p2, v0, p3}, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda2;-><init>(Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;)V

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 230
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 231
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 235
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v2

    double-to-int p1, v0

    const/4 p3, -0x2

    invoke-virtual {p2, p1, p3}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public shawLoginDialogs(Landroid/content/Context;)V
    .locals 4

    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0024

    const/4 v2, 0x0

    .line 82
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 86
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->mAlertDialog:Landroid/app/AlertDialog;

    .line 87
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils;->loginDialog:Landroid/app/AlertDialog;

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string v1, "xzx"

    const-string v2, "\u5f00\u542f\u52a8\u753b"

    .line 91
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/util/DimenUtils;->dip2px(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/util/DimenUtils;->dip2px(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public showGpsDialog(Landroid/content/Context;)V
    .locals 3

    .line 326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d008c

    .line 327
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0070

    .line 328
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/util/DialogUtils$6;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/util/DialogUtils$6;-><init>(Lcom/jiabaida/little_elephant/util/DialogUtils;)V

    const v2, 0x7f0d0058

    .line 329
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/util/DialogUtils$5;

    invoke-direct {v1, p0, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils$5;-><init>(Lcom/jiabaida/little_elephant/util/DialogUtils;Landroid/content/Context;)V

    const p1, 0x7f0d00b6

    .line 336
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
