.class public final synthetic Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda2;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda2;->f$1:Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda2;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda2;->f$1:Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;

    invoke-static {v0, v1, p1}, Lcom/jiabaida/little_elephant/util/DialogUtils;->lambda$passWordDialog2$4(Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;Landroid/view/View;)V

    return-void
.end method
