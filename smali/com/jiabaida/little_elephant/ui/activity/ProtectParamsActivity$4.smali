.class Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;
.super Ljava/lang/Object;
.source "ProtectParamsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 365
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 366
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    new-instance p2, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p2}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$success$0$com-jiabaida-little_elephant-ui-activity-ProtectParamsActivity$4(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)V
    .locals 2

    .line 343
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 344
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getCmd()C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;F)F

    .line 347
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)F

    move-result p1

    const/high16 v0, 0x457a0000    # 4000.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getCmd()C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 353
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$402(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;I)I

    .line 355
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$108(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    .line 356
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 357
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :cond_3
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 342
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)V

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
