.class public Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "OtaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_CONNECTION:I = 0xd

.field private static final MSG_INFO:I = 0xc

.field private static final MSG_PROGRESS:I = 0xb

.field private static final REQUEST_CODE_SELECT_OTA_BIN:I = 0x1


# instance fields
.field private btn_connect_action:Landroid/widget/Button;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private firmwareData:[B

.field isConnected:Z

.field private mDevice:Lcom/telink/ota/ble/Device;

.field public mDeviceStateCallback:Lcom/telink/ota/ble/Device$DeviceStateCallback;

.field private mInfoHandler:Landroid/os/Handler;

.field private otaName:Ljava/lang/String;

.field private pb_connecting:Landroid/widget/ProgressBar;

.field private pb_progress:Landroid/widget/ProgressBar;

.field private sb_speed:Landroid/widget/SeekBar;

.field private selectFile:Landroid/widget/TextView;

.field private selectedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private selectedService:Landroid/bluetooth/BluetoothGattService;

.field services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private startOta:Landroid/widget/Button;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tv_char:Landroid/widget/TextView;

.field private tv_connection:Landroid/widget/TextView;

.field private tv_device_info:Landroid/widget/TextView;

.field private tv_fw_info:Landroid/widget/TextView;

.field private tv_info:Landroid/widget/TextView;

.field private tv_progress:Landroid/widget/TextView;

.field private tv_service:Landroid/widget/TextView;

.field private tv_speed_desc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->isConnected:Z

    .line 79
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mInfoHandler:Landroid/os/Handler;

    .line 431
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDeviceStateCallback:Lcom/telink/ota/ble/Device$DeviceStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_progress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->pb_progress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_char:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_service:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Lcom/telink/ota/ble/Device;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDevice:Lcom/telink/ota/ble/Device;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mInfoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_info:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->enableUI(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->pb_connecting:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/Button;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->btn_connect_action:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_connection:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_speed_desc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/bluetooth/BluetoothGattService;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectedService:Landroid/bluetooth/BluetoothGattService;

    return-object p0
.end method

.method static synthetic access$802(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectedService:Landroid/bluetooth/BluetoothGattService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static synthetic access$902(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method private checkSelectedFile(Ljava/lang/String;)V
    .locals 4

    .line 418
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->readFirmware(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectFile:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    new-array v0, p1, [B

    .line 423
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->firmwareData:[B

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_fw_info:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bin version(2--5): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-static {v0, v2}, Lcom/telink/ota/util/Arrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectFile:Landroid/widget/TextView;

    const v0, 0x7f0d00b2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 427
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_fw_info:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private enableUI(Z)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->startOta:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->sb_speed:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_service:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_char:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectFile:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private initViews()V
    .locals 3

    const v0, 0x7f0800f9

    .line 188
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0700ca

    .line 189
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0800c3

    .line 190
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->otaName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->readRawFirmware(Ljava/lang/String;)Z

    const v0, 0x7f08018b

    .line 200
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectFile:Landroid/widget/TextView;

    const v0, 0x7f0802a0

    .line 201
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v1, "OTA"

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800d9

    .line 203
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_info:Landroid/widget/TextView;

    const v0, 0x7f080159

    .line 204
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_progress:Landroid/widget/TextView;

    const v0, 0x7f080157

    .line 205
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->pb_progress:Landroid/widget/ProgressBar;

    const v0, 0x7f08019c

    .line 206
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->startOta:Landroid/widget/Button;

    const v0, 0x7f080033

    .line 207
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->btn_connect_action:Landroid/widget/Button;

    const v0, 0x7f08021e

    .line 208
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_connection:Landroid/widget/TextView;

    const v0, 0x7f080224

    .line 209
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_device_info:Landroid/widget/TextView;

    const v0, 0x7f080232

    .line 210
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_fw_info:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "Unknown"

    .line 213
    :goto_1
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_device_info:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectFile:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->startOta:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->btn_connect_action:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08019e

    .line 217
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08029c

    .line 218
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_speed_desc:Landroid/widget/TextView;

    const v0, 0x7f08017a

    .line 219
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->sb_speed:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 223
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->sb_speed:Landroid/widget/SeekBar;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$3;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f080261

    .line 239
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_service:Landroid/widget/TextView;

    const v0, 0x7f080219

    .line 240
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_char:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_service:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_char:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080156

    .line 245
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->pb_connecting:Landroid/widget/ProgressBar;

    return-void
.end method

.method private readFirmware(Ljava/lang/String;)Z
    .locals 1

    .line 390
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 392
    new-array p1, p1, [B

    .line 393
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 394
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 395
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->firmwareData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 398
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method private readRawFirmware(Ljava/lang/String;)Z
    .locals 1

    .line 375
    :try_start_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 376
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 378
    new-array v0, v0, [B

    .line 379
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 380
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 381
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->firmwareData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 384
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method private showCharsDialog()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectedService:Landroid/bluetooth/BluetoothGattService;

    if-nez v0, :cond_0

    .line 280
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v0

    const-string v1, "select service first"

    invoke-virtual {v0, p0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 283
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 285
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 286
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_1
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Select Custom Characteristic"

    .line 289
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 290
    new-instance v3, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;Ljava/util/List;[Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 298
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showServicesDialog()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDevice:Lcom/telink/ota/ble/Device;

    invoke-virtual {v0}, Lcom/telink/ota/ble/Device;->getServices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->services:Ljava/util/List;

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v0

    const-string v1, "device not connected"

    invoke-virtual {v0, p0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Select Custom Service"

    .line 260
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 261
    new-instance v2, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a001e

    return v0
.end method

.method public getConnectionDesc(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "unknown"

    return-object p1

    :cond_0
    const-string p1, "disconnecting..."

    return-object p1

    :cond_1
    const-string p1, "connected"

    return-object p1

    :cond_2
    const-string p1, "connecting..."

    return-object p1

    :cond_3
    const-string p1, "disconnected"

    return-object p1
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 405
    invoke-super {p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 365
    :sswitch_0
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->showServicesDialog()V

    goto/16 :goto_0

    .line 369
    :sswitch_1
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->showCharsDialog()V

    goto/16 :goto_0

    .line 361
    :sswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDevice:Lcom/telink/ota/ble/Device;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/telink/ota/ble/Device;->stopOta(Z)V

    goto :goto_0

    .line 323
    :sswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->firmwareData:[B

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "select bin !"

    .line 324
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectedService:Landroid/bluetooth/BluetoothGattService;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez p1, :cond_1

    .line 329
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    const-string v0, "selected characteristic !"

    invoke-virtual {p1, p0, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_1
    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->enableUI(Z)V

    .line 333
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_info:Landroid/widget/TextView;

    const-string v0, "start OTA"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->tv_progress:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    new-instance p1, Lcom/telink/ota/fundation/OtaSetting;

    invoke-direct {p1}, Lcom/telink/ota/fundation/OtaSetting;-><init>()V

    .line 336
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectedService:Landroid/bluetooth/BluetoothGattService;

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telink/ota/fundation/OtaSetting;->setServiceUUID(Ljava/util/UUID;)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->selectedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_3

    .line 340
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telink/ota/fundation/OtaSetting;->setCharacteristicUUID(Ljava/util/UUID;)V

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->firmwareData:[B

    invoke-virtual {p1, v0}, Lcom/telink/ota/fundation/OtaSetting;->setFirmwareData([B)V

    .line 343
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->sb_speed:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/telink/ota/fundation/OtaSetting;->setReadInterval(I)V

    .line 344
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDevice:Lcom/telink/ota/ble/Device;

    invoke-virtual {v0, p1}, Lcom/telink/ota/ble/Device;->startOta(Lcom/telink/ota/fundation/OtaSetting;)V

    goto :goto_0

    .line 350
    :sswitch_4
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->isConnected:Z

    if-nez p1, :cond_4

    .line 351
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDevice:Lcom/telink/ota/ble/Device;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/telink/ota/ble/Device;->connect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 353
    :cond_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDevice:Lcom/telink/ota/ble/Device;

    invoke-virtual {p1}, Lcom/telink/ota/ble/Device;->disconnect()Z

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080033 -> :sswitch_4
        0x7f08019c -> :sswitch_3
        0x7f08019e -> :sswitch_2
        0x7f080219 -> :sswitch_1
        0x7f080261 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    if-nez p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->finish()V

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "OTA_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->otaName:Ljava/lang/String;

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->finish()V

    .line 161
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Firmware null"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 164
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->finish()V

    .line 167
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "device null"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->initViews()V

    const-string p1, "OTA"

    .line 174
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 178
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->checkSelectedFile(Ljava/lang/String;)V

    .line 181
    :cond_3
    new-instance p1, Lcom/telink/ota/ble/Device;

    invoke-direct {p1, p0}, Lcom/telink/ota/ble/Device;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDevice:Lcom/telink/ota/ble/Device;

    .line 182
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDeviceStateCallback:Lcom/telink/ota/ble/Device$DeviceStateCallback;

    invoke-virtual {p1, v0}, Lcom/telink/ota/ble/Device;->setDeviceStateCallback(Lcom/telink/ota/ble/Device$DeviceStateCallback;)V

    .line 183
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDevice:Lcom/telink/ota/ble/Device;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/telink/ota/ble/Device;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 304
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 305
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->mDevice:Lcom/telink/ota/ble/Device;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 306
    invoke-virtual {v0, v1}, Lcom/telink/ota/ble/Device;->clearAll(Z)V

    :cond_0
    return-void
.end method
