.class Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;
.super Ljava/lang/Object;
.source "InitSettingsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 443
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->hideLoading()V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 430
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p1

    iget-boolean p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    if-eqz p1, :cond_1

    .line 431
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->getNextMsg()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->getNextMsg()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
