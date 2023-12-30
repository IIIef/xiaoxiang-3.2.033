.class Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;
.super Ljava/lang/Object;
.source "FunctionSettingOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 626
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 610
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 611
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->hideLoading()V

    .line 612
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->showMsg(Ljava/lang/String;)V

    .line 613
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    .line 614
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 616
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V

    .line 617
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 618
    iput v0, p1, Landroid/os/Message;->what:I

    .line 619
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 620
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$23;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
