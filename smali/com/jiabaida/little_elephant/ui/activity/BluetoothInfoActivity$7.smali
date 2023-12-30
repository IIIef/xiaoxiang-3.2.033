.class Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;
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

    .line 487
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 2

    .line 503
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u84dd\u7259\u547d\u540d\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->hideLoading()V

    .line 506
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    new-instance p2, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;)V

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$fail$1$com-jiabaida-little_elephant-ui-activity-BluetoothInfoActivity$7()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const v1, 0x7f0d0118

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$success$0$com-jiabaida-little_elephant-ui-activity-BluetoothInfoActivity$7()V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    const-string v2, "BluetoothName"

    invoke-virtual {v1, v2, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    const v1, 0x7f0d0116

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 490
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u84dd\u7259\u547d\u540d\u6210\u529f"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->hideLoading()V

    .line 492
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    new-instance p2, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7$$ExternalSyntheticLambda1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$7;)V

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
