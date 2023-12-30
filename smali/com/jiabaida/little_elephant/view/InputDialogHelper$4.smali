.class Lcom/jiabaida/little_elephant/view/InputDialogHelper$4;
.super Ljava/lang/Object;
.source "InputDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$onlistener:Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$4;->val$onlistener:Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$4;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$4;->val$onlistener:Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/InputDialogHelper$4;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-interface {v0, v1, p1}, Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;->DismissListener(Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
