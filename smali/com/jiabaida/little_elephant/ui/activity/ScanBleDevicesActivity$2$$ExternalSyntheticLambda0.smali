.class public final synthetic Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/clj/fastble/data/BleDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;ILcom/clj/fastble/data/BleDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;

    iput p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2$$ExternalSyntheticLambda0;->f$2:Lcom/clj/fastble/data/BleDevice;

    return-void
.end method


# virtual methods
.method public final onClick(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;

    iget v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2$$ExternalSyntheticLambda0;->f$2:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->lambda$appKeyCallback$0$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity$2(ILcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
