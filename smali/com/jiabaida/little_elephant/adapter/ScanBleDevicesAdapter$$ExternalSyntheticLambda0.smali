.class public final synthetic Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

.field public final synthetic f$1:Lcom/clj/fastble/data/BleDevice;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;Lcom/clj/fastble/data/BleDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/clj/fastble/data/BleDevice;

    iput p3, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/clj/fastble/data/BleDevice;

    iget v2, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->lambda$onBindViewHolder$0$com-jiabaida-little_elephant-adapter-ScanBleDevicesAdapter(Lcom/clj/fastble/data/BleDevice;ILandroid/view/View;)V

    return-void
.end method
