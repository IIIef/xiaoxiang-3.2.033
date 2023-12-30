.class Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;
.super Ljava/lang/Object;
.source "ConnectResistanceActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 268
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->getMode()I

    move-result p1

    const/16 p2, 0xa5

    if-ne p1, p2, :cond_0

    .line 270
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->showMsg(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->hideLoading()V

    :goto_0
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 253
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->getMode()I

    move-result p1

    const/16 p2, 0xa5

    if-ne p1, p2, :cond_0

    .line 254
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x753a

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->showMsg(Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V

    .line 261
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :goto_0
    return-void
.end method
