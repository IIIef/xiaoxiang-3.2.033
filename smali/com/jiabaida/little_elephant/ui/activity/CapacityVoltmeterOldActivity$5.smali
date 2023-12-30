.class Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$5;
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

    .line 732
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 745
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 735
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V

    .line 736
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 737
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 738
    iput v0, p2, Landroid/os/Message;->what:I

    .line 739
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 740
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
