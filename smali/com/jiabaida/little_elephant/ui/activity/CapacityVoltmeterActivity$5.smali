.class Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$5;
.super Ljava/lang/Object;
.source "CapacityVoltmeterActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 646
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->hideLoading()V

    .line 647
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 641
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7d00

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
