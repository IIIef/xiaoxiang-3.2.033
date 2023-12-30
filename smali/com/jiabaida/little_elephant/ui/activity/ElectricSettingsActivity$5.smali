.class Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$5;
.super Ljava/lang/Object;
.source "ElectricSettingsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 844
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->hideLoading()V

    .line 845
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7544

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 838
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;->timeHandler:Landroid/os/Handler;

    const/16 p2, 0x7544

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
