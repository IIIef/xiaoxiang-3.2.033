.class public Lcom/jiabaida/little_elephant/view/InputDialogHelper;
.super Ljava/lang/Object;
.source "InputDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;FLjava/lang/String;Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, p1, p2, v0, p3}, Lcom/jiabaida/little_elephant/view/InputDialogHelper;->showDialog(Landroid/content/Context;FLjava/lang/String;ZLcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;)V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const p1, 0x7f0a0054

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08022a

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800ab

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f080227

    .line 86
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080228

    .line 87
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f0e016f

    invoke-direct {p2, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    .line 90
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 92
    invoke-virtual {p2, p5}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 93
    invoke-virtual {p2, p5}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 94
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance p1, Landroid/text/method/DigitsKeyListener;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-direct {p1, p3, p4}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 97
    new-instance p1, Lcom/jiabaida/little_elephant/view/InputDialogHelper$1;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/view/InputDialogHelper$1;-><init>()V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    new-instance p1, Lcom/jiabaida/little_elephant/view/InputDialogHelper$2;

    invoke-direct {p1, p2, p6}, Lcom/jiabaida/little_elephant/view/InputDialogHelper$2;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance p1, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;

    invoke-direct {p1, p6, v1, p0, p2}, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;-><init>(Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;Landroid/widget/EditText;Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$4;

    invoke-direct {p0, p6, p2}, Lcom/jiabaida/little_elephant/view/InputDialogHelper$4;-><init>(Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p2, p0}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;FLjava/lang/String;ZLcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v7, p3

    move-object v8, p4

    .line 54
    invoke-static/range {v2 .. v8}, Lcom/jiabaida/little_elephant/view/InputDialogHelper;->showDialog(Landroid/content/Context;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;)V

    return-void
.end method
