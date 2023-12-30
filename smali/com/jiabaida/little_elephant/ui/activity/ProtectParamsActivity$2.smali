.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;
.super Ljava/lang/Object;
.source "ProtectParamsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

.field final synthetic val$finalTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;->val$finalTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DismissListener(Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public leftBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public rightBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 264
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$4902(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;Z)Z

    .line 265
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/DialogUtils;->shawLoginDialogs(Landroid/content/Context;)V

    .line 266
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->initBatteryMode()V

    .line 268
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;->val$finalTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    const v0, 0x7f0d003e

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$5002(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->changeBatteryMode(II)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    const p2, 0x7f0d003c

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$5002(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->changeBatteryMode(II)V

    :goto_0
    return-void
.end method
