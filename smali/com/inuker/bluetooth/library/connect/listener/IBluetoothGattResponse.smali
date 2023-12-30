.class public interface abstract Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;
.super Ljava/lang/Object;
.source "IBluetoothGattResponse.java"


# virtual methods
.method public abstract onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
.end method

.method public abstract onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V
.end method

.method public abstract onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V
.end method

.method public abstract onConnectionStateChange(II)V
.end method

.method public abstract onDescriptorRead(Landroid/bluetooth/BluetoothGattDescriptor;I[B)V
.end method

.method public abstract onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
.end method

.method public abstract onReadRemoteRssi(II)V
.end method

.method public abstract onServicesDiscovered(I)V
.end method
