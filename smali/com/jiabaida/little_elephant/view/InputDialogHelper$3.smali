.class Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;
.super Ljava/lang/Object;
.source "InputDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/view/InputDialogHelper;->showDialog(Landroid/content/Context;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$edtInput:Landroid/widget/EditText;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$onlistener:Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;Landroid/widget/EditText;Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;->val$onlistener:Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;->val$edtInput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;->val$mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;->val$onlistener:Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;->val$edtInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;->val$mContext:Landroid/content/Context;

    const v0, 0x7f0d016d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;->val$onlistener:Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$3;->val$edtInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;->rightBottomViewClick(Landroid/app/Dialog;Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
