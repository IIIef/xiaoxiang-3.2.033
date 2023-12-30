.class public Lcom/jiabaida/little_elephant/view/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$showSureDialog$0(Landroidx/appcompat/app/AlertDialog;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;Landroid/view/View;)V
    .locals 0

    .line 127
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1, p0, p2}, Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;->rightBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showSureDialog$1(Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0, p1, p2}, Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;->DismissListener(Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, p1, v0, p2}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0053

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080229

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080227

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080228

    .line 71
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0e016f

    invoke-direct {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 77
    invoke-virtual {p0, p4}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 78
    invoke-virtual {p0, p4}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance p1, Lcom/jiabaida/little_elephant/view/DialogHelper$1;

    invoke-direct {p1, p0, p5}, Lcom/jiabaida/little_elephant/view/DialogHelper$1;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance p1, Lcom/jiabaida/little_elephant/view/DialogHelper$2;

    invoke-direct {p1, p0, p5}, Lcom/jiabaida/little_elephant/view/DialogHelper$2;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance p1, Lcom/jiabaida/little_elephant/view/DialogHelper$3;

    invoke-direct {p1, p5, p0}, Lcom/jiabaida/little_elephant/view/DialogHelper$3;-><init>(Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-object v7, p3

    .line 47
    invoke-static/range {v2 .. v7}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    return-void
.end method

.method public static showSureDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0056

    const/4 v1, 0x0

    .line 115
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080229

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080228

    .line 117
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0e016f

    invoke-direct {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 121
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 123
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 124
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 125
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance p1, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p4}, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance p1, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4, p0}, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
