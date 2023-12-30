.class public final synthetic Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/clj/fastble/data/BleDevice;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;ZLcom/clj/fastble/data/BleDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    iput-boolean p2, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/clj/fastble/data/BleDevice;

    iput p4, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/clj/fastble/data/BleDevice;

    iget v3, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$$ExternalSyntheticLambda1;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->lambda$onBindViewHolder$1$com-jiabaida-little_elephant-adapter-ScanBleDevicesAdapter(ZLcom/clj/fastble/data/BleDevice;ILandroid/view/View;)V

    return-void
.end method
