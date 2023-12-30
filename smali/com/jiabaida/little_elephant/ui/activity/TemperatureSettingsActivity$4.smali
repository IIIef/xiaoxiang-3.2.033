.class Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$4;
.super Ljava/lang/Object;
.source "TemperatureSettingsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 784
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->hideLoading()V

    .line 785
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 775
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    .line 777
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->showMsg(Ljava/lang/String;)V

    .line 778
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;)V

    .line 779
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7918

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
