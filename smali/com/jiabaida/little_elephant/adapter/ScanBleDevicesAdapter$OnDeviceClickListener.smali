.class public interface abstract Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;
.super Ljava/lang/Object;
.source "ScanBleDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceClickListener"
.end annotation


# virtual methods
.method public abstract appKeyCallback(Lcom/clj/fastble/data/BleDevice;I)V
.end method

.method public abstract onClickChectBluetooth(Landroid/view/View;IZLcom/clj/fastble/data/BleDevice;)V
.end method

.method public abstract onConnect(Lcom/clj/fastble/data/BleDevice;I)V
.end method

.method public abstract onDisConnect(Lcom/clj/fastble/data/BleDevice;I)V
.end method
