.class Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;
.super Ljava/lang/Object;
.source "TemperatureSettingsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 755
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 756
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    const/16 v0, 0x7918

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 757
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 758
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getResponseSrcDatas()[B

    move-result-object p1

    const/4 p2, 0x2

    .line 759
    aget-byte p2, p1, p2

    if-nez p2, :cond_0

    const/4 p2, 0x3

    aget-byte p1, p1, p2

    if-nez p1, :cond_0

    .line 760
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V

    .line 761
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 748
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    .line 749
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V

    .line 750
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
