.class public final synthetic Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;


# direct methods
.method public synthetic constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$5;->lambda$onConnectSuccess$0$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity$5()V

    return-void
.end method
