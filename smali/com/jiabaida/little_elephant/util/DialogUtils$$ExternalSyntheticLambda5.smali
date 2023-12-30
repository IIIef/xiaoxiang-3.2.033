.class public final synthetic Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;

.field public final synthetic f$3:[Z

.field public final synthetic f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;[ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;->f$2:Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;

    iput-object p4, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;->f$3:[Z

    iput-object p5, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;->f$2:Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;->f$3:[Z

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$$ExternalSyntheticLambda5;->f$4:Landroid/content/Context;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/jiabaida/little_elephant/util/DialogUtils;->lambda$passWordDialog2$3(Landroid/widget/EditText;Landroid/app/AlertDialog;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;[ZLandroid/content/Context;Landroid/view/View;)V

    return-void
.end method
