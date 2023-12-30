.class Lcom/jiabaida/little_elephant/view/DialogHelper$3;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$onlistener:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$3;->val$onlistener:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$3;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$3;->val$onlistener:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$3;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-interface {v0, v1, p1}, Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;->DismissListener(Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
