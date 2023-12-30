.class Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$6;
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

    .line 716
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 726
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->hideLoading()V

    .line 727
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7544

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 721
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7544

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
