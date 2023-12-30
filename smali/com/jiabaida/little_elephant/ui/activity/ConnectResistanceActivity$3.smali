.class Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$3;
.super Landroid/os/Handler;
.source "ConnectResistanceActivity.java"


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

    .line 189
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 192
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 193
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x753a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7918

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d00

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->setWriteMode()V

    .line 202
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 207
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->hideLoading()V

    goto :goto_0

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->getMResistanceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;->setData(Ljava/util/List;)V

    :goto_0
    return-void
.end method
