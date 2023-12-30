.class public final synthetic Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda0;->f$1:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/DialogHelper$$ExternalSyntheticLambda0;->f$1:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0, v1, p1}, Lcom/jiabaida/little_elephant/view/DialogHelper;->lambda$showSureDialog$1(Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
