.class public Lcom/jiabaida/little_elephant/util/SingleToast;
.super Ljava/lang/Object;
.source "SingleToast.java"


# static fields
.field private static INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast; = null

.field private static final TAG:Ljava/lang/String; = "SingleToast"


# instance fields
.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/jiabaida/little_elephant/util/SingleToast;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/util/SingleToast;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/String;I)Lcom/jiabaida/little_elephant/util/SingleToast;
    .locals 2

    if-eqz p0, :cond_3

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 41
    :cond_0
    sget-object v0, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/util/SingleToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 43
    sget-object v0, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, v0, Lcom/jiabaida/little_elephant/util/SingleToast;->mToast:Landroid/widget/Toast;

    .line 44
    sget-object p2, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/util/SingleToast;->mToast:Landroid/widget/Toast;

    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 45
    sget-object p2, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/util/SingleToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p2, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 46
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 48
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x55

    .line 50
    invoke-static {p0, p1}, Lcom/jiabaida/little_elephant/util/DimenUtils;->dip2px(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    const/16 p1, 0xeb

    .line 51
    invoke-static {p0, p1}, Lcom/jiabaida/little_elephant/util/DimenUtils;->dip2px(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    const/16 p1, 0x1e

    .line 52
    invoke-static {p0, p1}, Lcom/jiabaida/little_elephant/util/DimenUtils;->dip2px(Landroid/content/Context;I)I

    move-result p1

    const/16 v0, 0xf

    .line 53
    invoke-static {p0, v0}, Lcom/jiabaida/little_elephant/util/DimenUtils;->dip2px(Landroid/content/Context;I)I

    move-result p0

    .line 54
    invoke-virtual {p2, p1, p0, p1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p0, 0x11

    .line 55
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setGravity(I)V

    const p0, 0x7f05002a

    .line 56
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    sget-object p0, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    iget-object p0, p0, Lcom/jiabaida/little_elephant/util/SingleToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 60
    sget-object p0, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    iget-object p0, p0, Lcom/jiabaida/little_elephant/util/SingleToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_2
    :goto_0
    sget-object p0, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    return-object p0

    .line 39
    :cond_3
    :goto_1
    sget-object p0, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 75
    sget-object v0, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/util/SingleToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 67
    sget-object v0, Lcom/jiabaida/little_elephant/util/SingleToast;->INSTANCE:Lcom/jiabaida/little_elephant/util/SingleToast;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/util/SingleToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
