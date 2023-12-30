.class Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$1;
.super Ljava/lang/Object;
.source "ScanBleDevicesAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$AdapterViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

.field final synthetic val$bleDevice:Lcom/clj/fastble/data/BleDevice;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;ILcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    iput p2, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$1;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 176
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->access$300(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->access$300(Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;

    move-result-object v0

    iget v1, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$1;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;->onClickChectBluetooth(Landroid/view/View;IZLcom/clj/fastble/data/BleDevice;)V

    :cond_1
    return-void
.end method
