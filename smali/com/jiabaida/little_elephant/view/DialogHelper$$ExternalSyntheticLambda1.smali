.class public final synthetic Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$1:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda1;->f$1:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda1;->f$1:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;

    invoke-static {v0, v1, p1}, Lcom/jiabaida/little_elephant/view/DialogHelper;->lambda$showSureDialog$0(Landroidx/appcompat/app/AlertDialog;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;Landroid/view/View;)V

    return-void
.end method
