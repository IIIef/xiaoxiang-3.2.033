.class Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;
.super Ljava/lang/Object;
.source "BluetoothInfoActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 2

    .line 576
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2108(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)I

    .line 577
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 578
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;)V

    invoke-virtual {p2, v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 586
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2102(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;I)I

    .line 587
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->hideLoading()V

    .line 588
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 589
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 590
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getResponseSrcDatas()[B

    move-result-object p1

    .line 591
    aget-byte p2, p1, v0

    if-nez p2, :cond_0

    const/4 p2, 0x3

    aget-byte p1, p1, p2

    if-nez p1, :cond_0

    .line 592
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->showMsg(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$fail$1$com-jiabaida-little_elephant-ui-activity-BluetoothInfoActivity$8()V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const v2, 0x7f0d003e

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const v2, 0x7f0d003c

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$success$0$com-jiabaida-little_elephant-ui-activity-BluetoothInfoActivity$8()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const v2, 0x7f0d003e

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const v2, 0x7f0d003c

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 556
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2108(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)I

    .line 557
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 558
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    new-instance p2, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8$$ExternalSyntheticLambda1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;)V

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 567
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2102(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;I)I

    .line 568
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->hideLoading()V

    .line 569
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->showMsg(Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :cond_0
    return-void
.end method
