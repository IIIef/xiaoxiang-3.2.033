.class Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$7;
.super Ljava/lang/Object;
.source "ElectricSettingsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 743
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hideLoading()V

    .line 744
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 734
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 735
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4800(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    goto :goto_0

    .line 737
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$7;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->getNextMsg()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
