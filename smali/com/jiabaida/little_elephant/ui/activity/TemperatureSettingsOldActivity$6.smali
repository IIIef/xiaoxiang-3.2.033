.class Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$6;
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

    .line 899
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 909
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 910
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 903
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->hideLoading()V

    .line 904
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    const p2, 0x7f0d0116

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method
