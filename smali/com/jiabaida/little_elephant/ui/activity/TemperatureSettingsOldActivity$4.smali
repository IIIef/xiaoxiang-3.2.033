.class Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$4;
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

    .line 768
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 780
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 781
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 771
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 772
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V

    goto :goto_0

    .line 774
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->getNextMsg()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
