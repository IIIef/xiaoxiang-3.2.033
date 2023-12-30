.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;
.super Ljava/lang/Object;
.source "BalanceSettingsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 419
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->hideLoading()V

    .line 421
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 423
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    :goto_0
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 402
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->hideLoading()V

    .line 404
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    .line 406
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V

    .line 409
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x2

    .line 410
    iput v0, p1, Landroid/os/Message;->what:I

    .line 411
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 412
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
