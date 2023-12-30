.class Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$8;
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

    .line 855
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 868
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 858
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4700(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)V

    .line 859
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 860
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 861
    iput v0, p2, Landroid/os/Message;->what:I

    .line 862
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 863
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
