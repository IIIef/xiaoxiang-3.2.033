.class Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;
.super Ljava/lang/Object;
.source "CapacityVoltmeterOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 762
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 763
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    .line 764
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 754
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->hideLoading()V

    .line 755
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$4100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V

    .line 756
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->showMsg(Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method
