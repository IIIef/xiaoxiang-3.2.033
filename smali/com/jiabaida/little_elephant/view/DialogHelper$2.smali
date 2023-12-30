.class Lcom/jiabaida/little_elephant/view/DialogHelper$2;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Landroidx/appcompat/app/AlertDialog;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$2;->val$onlistener:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$2;->val$onlistener:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;

    if-eqz v0, :cond_1

    .line 96
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-interface {v0, v1, p1}, Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;->rightBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V

    :cond_1
    return-void
.end method
